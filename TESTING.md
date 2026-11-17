# Test scenarios

One patch file, 201 textures, no assembly, no own def. Little to break. Whatever breaks, breaks **silently**. So mod need game, not checker.

**No log errors = not pass. Here even less than usual.** All 26 operations carry `<success>Always</success>`, exactly what port added: operation finding no animal reports success, writes nothing. Flag keeps other 25 animals' coats when one defName moves, but hides loss. Only animals on screen settle it.

## Shared setup and execution record

RimWorld 1.6, Core, Megafauna, this mod, order below. Original Colorful Coats off except scenario H. Dev mode on. Record game build, Megafauna version/date, repo revision + local changes, language, results. New colony for A-C, save it for D. Backed-up Megafauna save for E-F. G-H alter mod list on purpose; restore baseline after. Run suite in English and French, inspect Player.log after each load, check mod-list display in both languages. Keep observations + log excerpts with each result. No settings page or MainButtons shortcut expected.

Status: not run. Scenarios, not passing results.

## Which scenarios have a Pickle feature

Written 2026-09-28 in `Tests/Pickle/`; scope and pass matrix in its `README.md`. Written ≠ run: nothing below played; three shared steps in `PickleTools/CoatSteps` never ran either.

| Scenario | In Pickle | Feature |
|---|---|---|
| A - the coats appear | yes | `03-coats-on-spawn` (mammoth, scorpion, Enhydriodon) |
| B - the far end of the sequence | yes | `01-patch-applied` for all 26, `04-sequence-ends` for first and last |
| C - the 67 coats and the three rotations | yes (written 2026-10-17, not played) | `10-all-coats`: one animal per extra coat, 26 kinds, 67 coats, each drawn with own texture; `11-all-textures`: all 201 files answered by mod; `02-textures` sample; `09-coat-sheet` (Sanctuary pass, `@coatsheet`, played, read 2026-10-17): Chalicotherium, Enhydriodon, Purussaurus in North, South, East, 9 captures, no flipped/missing piece. Other 23 kinds per facing unseen: no step shows pixels |
| D - per animal, survives a reload | yes | `05-coat-survives-reload` |
| E - added to a save | by `03`, `05` | every scenario loads mod into `test-colony`, which never had it (`WELCOME.md`: adding has no own test) |
| F - removed from a save | yes (written 2026-10-17, not played) | `12-removed-from-save`, sequence `-Then` + `-ThenWithout nelim.colorfulcoats.megafauna`: coats saved with mod, save passed to test companion, loaded without mod, 16 mammoths exist, none extra coat, no error |
| G - no Megafauna at all | no | game's reaction to missing hard dependency, not ours to test |
| H - the original alongside | yes | `06-original-alongside`, incompatibility pass only |
| I - the mod list entry | not applicable | game's own display (`AUDIT.md`, "On ne teste pas le jeu"); mod owns `About.xml` + images, checked offline by `Tests/Rule-OwnValues.ps1` and `Check-Status.ps1` |

`@review` capture in `03` for human to open; green = steps ran, not animals look different.

## What is settled before the game starts

Shared checks answer three no-RimWorld questions: `Check-Textures` (every `texPath` has three rotation files shipped, no unreferenced shipped texture), `Check-PatchTargets` (26 defNames still exist in Megafauna), `Check-AlternateGraphics` (list structure, no pre-existing own `alternateGraphics`). Each exits non-zero, names file when missing.

```
pwsh -NoProfile -File Tests/Test-Mod.ps1
```

`Tests/Rule-OwnValues.ps1` (run by generated `Tests/Test-Mod.ps1` after shared checks) checks metadata, dependency/incompatibility declarations, GitHub link, 26 operations + success flags, XPath selection on minimal fixtures, field names, probability bounds, 67 unique coat paths. Rule local to repo (Tests/); XML parsing and duplicate defs left to shared Check-ModBasics. Old monorepo's four shared checkers = historical verification, not local tests. Static checks don't run RimWorld's patch engine or validate types against its assembly. Verified PowerShell 7.6.5, 2026-09-12. Windows PowerShell (`powershell.exe`) blocked by machine execution policy; policy unchanged.

None says coats appear. Scenarios below do.

## Load order

```
Spino.Megafauna                Megafauna            1055485938   the target
nelim.colorfulcoats.megafauna  this mod                          after it
```

Megafauna **is** declared dependency here, unlike same-family Dodos mod: patch has no `PatchOperationFindMod` guard, so only dependency tells player mod useless without it.

`purpleyam.colorfulcoats.spinomegafauna` - original - in `<incompatibleWith>`, must stay off.

## What the patch aims at

26 animals, 67 extra coats, 201 textures, three rotations each. Chance per animal:

| Chance | Animals |
|---|---|
| 0.8 | Chalicotherium (5 coats), Enhydriodon (4), Purussaurus (4) |
| 0.7 | Arthropleura, Deinotherium, Dinocrocuta, Elasmotherium, Procoptodon, Sivatherium, WoollyMammoth (3 each) |
| 0.6 | Paraceratherium (3), and Andrewsarchus, Castoroides, Daeodon, Diprotodon, Doedicurus, Gomphotaria, Josephoartigasia, Macrauchenia, Megalania, Platybelodon, Pulmonoscorpius, Smilodon, Titanis, Uintatherium, Zygolophodon (2 each) |

Patch order alphabetical: Andrewsarchus first, Zygolophodon last. Scenario B about that order.

## What to search the log for

`Player.log` sits in
`%USERPROFILE%\AppData\LocalLow\Ludeon Studios\RimWorld by Ludeon Studios\Player.log`.

Every string below read from 1.6's own `Assembly-CSharp.dll`, not memory. Stored UTF-16, so ASCII `grep` finds none - decoding as Unicode from byte 0 finds only even-byte starts. Search **both** alignments or half table missing:

```powershell
$b = [IO.File]::ReadAllBytes($dll)
foreach ($off in 0, 1) { [Text.Encoding]::Unicode.GetString($b, $off, $b.Length - $off).IndexOf($s) }
```

String in assembly ≠ code path reaching it. `Adding duplicate` row below in assembly but unreachable - more useful half of what it says.

| String in the log | Written by | What it would mean for this mod |
|---|---|---|
| `in any active mod or in base resources` | `ContentFinder<T>.Get` | `texPath` with nothing behind it. Line quotes path, so names coat and rotation. |
| `Failed to find any textures at` | `Graphic_Multi.Init` | Same fault one level up: no rotation found for a coat. |
| `doesn't correspond to any field in type` | `DirectXmlToObject` | Failure port checked against. Would name `alternateGraphics` or `alternateGraphicChance` = 1.6 renamed field. Animals still load, walk, wrong colour. |
| `Patch operation` … `failed` | `PatchOperation.Complete` | Expected count: **zero**, and zero says nothing here. Every operation has `<success>Always</success>`. |
| `Adding duplicate` | `DefDatabase.Add` | **Never this mod.** In assembly, unreachable here: mod declares no own def, and between two mods unreachable anyway - `DefDatabase.AddAllInMods` removes prior entry before adding, so duplicate defName silently overwritten, last loaded wins. |
| `Could not find type named` | `DirectXmlToObject.ClassTypeOf` | Only two `Class=` values used, both `Verse` patch operations. Would mean 1.6 renamed one. |

Lines naming other mods not ours to fix; leave them in whatever pasted back.

---

## A - the coats appear at all

Only scenario that matters. Rest assume it passed.

- Dev mode on, spawn **20** `WoollyMammoth` via debug spawn-pawn.
- Expect ~**14 coloured, 6 original**. Each rolls at `0.7`.
- **All 20 original fails appearance check.** At `0.7` probability `0.3^20` (~1 in 29 billion) if rolls independent as expected. Investigate target names, mod activation, patch loading; result alone doesn't identify cause.
- If all original, open Megafauna's defs, read mammoth `defName` as today, compare to xpath in `Mod/Patches/ColorfulCoats_Megafauna.xml`. Log will have said nothing.

## B - the far end of the sequence

Scenario port exists for; only one testing port's change.

26 operations in one `PatchOperationSequence`; sequence **stops at first operation returning false**. Before port, `<success>Always</success>` sat on sequence only, silencing error without resuming: one renamed animal cost coats of every animal after it. Flag now on each operation.

- Spawn handful **Zygolophodon** (last in file) and handful **Andrewsarchus** (first).
- Both must show extra coats. Zygolophodon rolls `0.6`, two coats; spawn ~15: all 15 original ~1 in a million.
- First has coats, last doesn't = something between failing, sequence stopped - flag lost, since no operation here may fail now.

## C - the 67 coats and the three rotations

Manual. Pickle (`02-textures`) samples 13 files; `Check-Textures` proves all exist. Neither shows coat walking. West not shipped: RimWorld mirrors `_east` when no `_west`, so west-walker with far side reversed is correct.

**Preconditions**
- New colony, Core + Megafauna + this mod, original Colorful Coats off, dev mode on. A passed.
- Pause game, log open (see "What to search the log for").

**Actions**
1. Debug-spawn 12 **Chalicotherium** (five extra coats), 12 **Enhydriodon**, 12 **Purussaurus** (four each).
2. Count distinct extra coats per species on screen. Spawn more if coat missing: at 0.8 coat may not have rolled yet; not defect until ~40 animals.
3. Draft/move few per species to face **north**, **south**, **east**, then **west**.
4. Other 23 species: spawn 8 each, one batch at a time, see every extra coat once.

**Expected**
- All 67 coats appear at least once across pass, all four facings.
- North: body, no wrongly turned head, no missing/flipped piece, no white or pink fallback square.
- West: mirrored east, never missing texture.
- Log has no `in any active mod or in base resources`, no `Failed to find any textures at`.

**Record**: game build, Megafauna date, revision, language, species checked, any coat never seen (name it), log lines.

## D - the coat is per-animal and survives a reload

Coat **not stored**. Decompiled 1.6 `Verse.PawnGraphicUtils.TryGetAlternate`, called by every animal renderer draw path, derives it on demand: `Rand` seeded with `pawn.thingIDNumber ^ 0xB415`, then `alternateGraphicChance` decides if extra coat drawn, weighted pick chooses which. `Verse.Thing.overrideGraphicIndex` exists but pawn renderer ignores it; stays null for normally generated animal. (Earlier version said index saved under that name; guess, wrong.)

- Save with several coloured animals visible, quit to menu, reload.
- Each keeps **own** coat. Holds because `thingIDNumber` saved and coat = pure function of it + `alternateGraphics` list; coat changing on reload = id or list changed, not lost stored value. So scenario also guards list: reordering/adding coat later would reshuffle every coat in existing saves; this is how noticed.

## E - added to a save in progress

Manual, not automatable: one save opened twice with different mod sets; harness stages one set per launch. Coat computed every draw from saved id, stored nowhere (see D), so adding mod should recolour animals **already in save**, deterministically. Expectation from decompiled 1.6 code, never seen: README and About say so.

**Preconditions**
- **Backup copy** of save made with Core + Megafauna, **without** this mod, ≥10 animals of covered species (mammoths easy, 0.7) already spawned, plus few born or tamed.
- Original Colorful Coats off. Dev mode on. Note animals: species + screenshot each.

**Actions**
1. Enable mod after Megafauna, restart, load backup.
2. Look at every animal from save. Screenshot each vs earlier picture.
3. Save, quit to menu, reload, look again.
4. Spawn 10 more covered animals, let one be born or arrive if colony allows.

**Expected**
- ~each kind's chance (0.6 to 0.8) of **existing** animals now wear extra coat; rest original.
- Each shows **same** coat after step 3 reload. Change between loads = D failed.
- New animals behave like existing.
- Nothing logged, no red error at load.

**Record**: per animal before/after; recoloured share vs expected chance; log lines; language.
If no existing animal changes, say so plainly: contradicts code; README and About must change.

## F - removed from a save in progress

Manual, same reason as E. No index ever saved, so nothing points into vanished list.

**Preconditions**
- Save from end of E, mod enabled, some animals visibly in extra coats, screenshot each.

**Actions**
1. Disable mod (keep Megafauna), restart, load save.
2. Check every animal screenshotted in E vs original picture.
3. Save, quit, reload.

**Expected**
- All back to original coat, no red error on load/save.
- Log names neither `alternateGraphics` nor any of 26 defNames.
- Save loads, runs normally few in-game days.

**Record**: animals not reverted (name them), log lines, language. Restore baseline mod list after.

## G - the mod alone, with no Megafauna at all

- Enable mod, Megafauna off.
- RimWorld flags missing dependency in mod list. That's `<modDependencies>` working, not fault, and only warning player gets: patch unguarded, finds nothing, says nothing.
- Game must load, log clean.

## H - the original enabled alongside

- Try enabling purpleyam's `purpleyam.colorfulcoats.spinomegafauna` together with this.
- `<incompatibleWith>` should refuse pair; refusal = entire protection.
- If both load anyway, **nothing logged, nothing visibly breaks**. Neither declares def; both add `<alternateGraphics>` element to same `PawnKindDef`. Confirmed by Pickle (e824ec2, incompat pass): mammoth list grew 3 → 6 entries, not "last wins" - `alternateGraphics` is `List<T>`, both `PatchOperationAdd` append `<li>` not overwrite. Scalar `alternateGraphicChance` *is* overwritten, stayed `0.7`, this mod's value, since loads after purpleyam's. Animals get coats either way - why scenario can't be judged from screen.

## I - the mod list entry itself

Manual: look at screen, Pickle can't answer. Once English, once French.

**Preconditions**
- Core + Megafauna + this mod, nothing else of family. Open Mods from main menu.

**Actions**
1. Select mod. Read name, author line, description, version line.
2. Read Workshop-style preview in details pane.
3. Look at list icon at game draw size (~32 px).
4. Switch language (restart), repeat 1-3.

**Expected**
- Name reads `Colorful Coats - Megafauna! Renew (unofficial)`.
- Author line reads `purpleyam - 1.6 adapted by Nelim`.
- Description opens with UNOFFICIAL notice, ends with GitHub source link.
- Preview is `About/Preview.png` (896x504), title, `Renew (unofficial)`, `1.6` badge visible.
- Icon is `About/ModIcon.png`. At 32 px only central smiley reads; owner kept icon, so recorded limit, not finding. **Missing** or generic placeholder = finding.
- No Mod options settings entry, no MainButtons shortcut (none expected).
- Description English in both languages: by design, no translated text.

**Record**: screenshot of list entry + details pane per language, anything differing.

## What no check offline can catch

Patch is bare `PatchOperationSequence`, no `PatchOperationFindMod` guard, every operation flagged to succeed. Together: **renamed animal gives no log line, no failed operation, no visible error** - animal just quietly loses coats. A and B exist because nothing else would tell.

## Pickle passes required (AUDIT.md, "Passes Pickle")

Two passes, one per applicable family. Report names which (`-DepMap`).

| Family | Count | Map | Covers |
|---|---|---|---|
| Without the optional mods | 1 | `wsl-deps.sans-facultatifs.map` | Core, DLC, Harmony, RimLogging, Pickle, Megafauna and this mod. Only clean-capture pass: 01 to 05 |
| With the optional mods, one per exclusive combination | 0 | none | No optional mod declared: `loadAfter` names Megafauna only, hard dependency |
| One per declared incompatibility | 1 | `wsl-deps.incompat-spinomegafauna.map` | purpleyam's original alongside (`purpleyam.colorfulcoats.spinomegafauna`): 06. Replayed when original changes, not each release |

One language: mod ships no text, so no English/French pass.

Order: never-run and red first, one small ticket each (`-Filter`). Initial ticket plays every scenario once. Full replays of green filed together after commit + deployment, on published revision. Scenario enters non-regression once green on current logic; change to mod or its step makes it new again. All scenarios currently new: none green since 2026-09-28 step fixes, except those recorded in `docs/runs/`.

Third pass for Workshop gallery only (`@gallery`): `wsl-deps.gallery.map`, Sanctuary Backlot fixture + mod's own staging. Proves no mod behaviour: makes images human judges. Not validation pass.
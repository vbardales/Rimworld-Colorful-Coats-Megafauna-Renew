# Test scenarios

One patch file, 201 textures, no assembly, no def of its own. Little here to break. Everything that can break breaks **silently**. So mod need the game, not checker.

**No errors in log = not a pass. Here even less than usual.** Each of 26 operations carries `<success>Always</success>`, exactly what port added: operation finding no animal reports success, writes nothing. Flag buys other 25 animals their coats when one defName moves, but makes loss invisible. Only animals on screen settle it.

## Shared setup and execution record

Use RimWorld 1.6 with Core, Megafauna, this mod in order below; keep original Colorful Coats mod disabled except scenario H. Enable developer mode. Record game build, Megafauna version/date, repository revision plus local changes, language, results. Start new colony for A-C, then save colony for D. Use backed-up existing Megafauna save for E-F. G-H deliberately alter mod list; restore baseline afterward. Run suite in English and French, inspect Player.log after each load, check mod-list presentation in both languages. Keep observations and log excerpts with each result. No settings page or MainButtons shortcut expected from this mod.

Execution status: not run. Instructions are scenarios, not successful test results.

## Which scenarios have a Pickle feature

Written 2026-09-28 in `Tests/Pickle/`, see its `README.md` for scope and pass matrix. Written is not run: nothing below played, and three shared steps in `PickleTools/CoatSteps` never ran either.

| Scenario | In Pickle | Feature |
|---|---|---|
| A — the coats appear | yes | `03-coats-on-spawn` (mammoth, scorpion, Enhydriodon) |
| B — the far end of the sequence | yes | `01-patch-applied` for all 26, `04-sequence-ends` for first and last |
| C — the 67 coats and the three rotations | partly | `02-textures` for 13 files, `09-coat-sheet` (Sanctuary pass, `@coatsheet`, written 2026-10-16, not played): every coat of Chalicotherium, Enhydriodon, Purussaurus in North, South, East, with 9 `@review` captures; other 23 kinds are `Check-Coats.ps1` and a person |
| D — per animal, survives a reload | yes | `05-coat-survives-reload` |
| E, F — added to or removed from a save | no | two launches of one save; stays manual |
| G — no Megafauna at all | no | game's reaction to missing hard dependency, not ours to test |
| H — the original alongside | yes | `06-original-alongside`, incompatibility pass only |
| I — the mod list entry | no | a look at a screen |

`@review` capture in `03` is for person to open; green says steps ran, not that animals look different.

## What is settled before the game starts

`scripts/Check-Coats.ps1` answers three questions needing no RimWorld: every `texPath` has its three rotation files shipped, every shipped texture referenced by some `texPath`, and the 26 defNames still exist in Megafauna with no `alternateGraphics` of their own already. Exits non-zero and names file when one missing.

```
pwsh -NoProfile -File scripts/Check-Coats.ps1
pwsh -NoProfile -File scripts/Check-Xml.ps1
```

`Check-Xml.ps1` parses all shipped XML, checks metadata, dependency and incompatibility declarations, GitHub link, 26 operations and success flags, XPath selection on minimal fixtures, field names, probability bounds, 67 unique coat paths. Both scripts local to this repository. Former monorepo's four shared checkers are historical verification, not available local tests. Static checks do not execute RimWorld's patch engine or validate types against its assembly. Verified with PowerShell 7.6.5 on 2026-09-12. Windows PowerShell (`powershell.exe`) blocked by machine's script execution policy; policy not changed.

None of that says coats appear. That is what scenarios below are for.

## Load order

```
Spino.Megafauna                Megafauna            1055485938   the target
nelim.colorfulcoats.megafauna  this mod                          after it
```

Megafauna **is** declared dependency here, unlike Dodos mod of same family: patch carries no `PatchOperationFindMod` guard, so only dependency tells player mod pointless without it.

`purpleyam.colorfulcoats.spinomegafauna` — the original — named in `<incompatibleWith>`, must stay off.

## What the patch aims at

26 animals, 67 extra coats, 201 textures at three rotations each. Chance is per animal:

| Chance | Animals |
|---|---|
| 0.8 | Chalicotherium (5 coats), Enhydriodon (4), Purussaurus (4) |
| 0.7 | Arthropleura, Deinotherium, Dinocrocuta, Elasmotherium, Procoptodon, Sivatherium, WoollyMammoth (3 each) |
| 0.6 | Paraceratherium (3), and Andrewsarchus, Castoroides, Daeodon, Diprotodon, Doedicurus, Gomphotaria, Josephoartigasia, Macrauchenia, Megalania, Platybelodon, Pulmonoscorpius, Smilodon, Titanis, Uintatherium, Zygolophodon (2 each) |

Animals sit in patch alphabetical order, Andrewsarchus first, Zygolophodon last. That order is what scenario B is about.

## What to search the log for

`Player.log` sits in
`%USERPROFILE%\AppData\LocalLow\Ludeon Studios\RimWorld by Ludeon Studios\Player.log`.

Every string below read out of 1.6's own `Assembly-CSharp.dll`, not remembered. Messages are UTF-16 there, so ASCII `grep` finds none — and decoding file as Unicode from byte 0 finds only ones starting on even byte. Search **both** alignments, or half the table comes back absent:

```powershell
$b = [IO.File]::ReadAllBytes($dll)
foreach ($off in 0, 1) { [Text.Encoding]::Unicode.GetString($b, $off, $b.Length - $off).IndexOf($s) }
```

String in assembly not same as code path reaching it. `Adding duplicate` row below is in assembly and unreachable, the more useful half of what it says.

| String in the log | Written by | What it would mean for this mod |
|---|---|---|
| `in any active mod or in base resources` | `ContentFinder<T>.Get` | `texPath` with nothing behind it. Line quotes path, so names which coat and which rotation. |
| `Failed to find any textures at` | `Graphic_Multi.Init` | Same fault one level up: no rotation at all found for a coat. |
| `doesn't correspond to any field in type` | `DirectXmlToObject` | Failure the port was checked against. Would name `alternateGraphics` or `alternateGraphicChance`, mean 1.6 renamed field under us. Animals still load, walk, simply wrong colour. |
| `Patch operation` … `failed` | `PatchOperation.Complete` | Expected count from this mod: **zero**, and here zero says nothing at all. Every operation carries `<success>Always</success>`. |
| `Adding duplicate` | `DefDatabase.Add` | **Never this mod.** String in assembly, but nothing here reaches it: mod declares no def of its own, and between two mods message unreachable anyway — `DefDatabase.AddAllInMods` removes previous entry before adding, so defName declared twice overwritten in silence, last mod loaded winning. |
| `Could not find type named` | `DirectXmlToObject.ClassTypeOf` | Only two `Class=` values used here, both `Verse` patch operations. Would mean 1.6 renamed one. |

Lines naming other mods not ours to fix, worth leaving in whatever gets pasted back.

---

## A — the coats appear at all

The one scenario that matters. Everything else assumes this one passed.

- Dev mode on, spawn **20** with debug spawn-pawn action, `WoollyMammoth`.
- Expect roughly **14 coloured, 6 original**. Each animal rolls coats at `0.7`.
- **All 20 in original coat fails appearance check.** At `0.7` that sample has probability `0.3^20` (about one in 29 billion) if expected independent rolls occur. Investigate target names, mod activation, patch loading; this result alone does not identify cause.
- If all come out original, open Megafauna's own defs, read `defName` on its mammoth as it stands today, compare against xpath in `Mod/Patches/ColorfulCoats_Megafauna.xml`. Nothing in log will have said a word.

## B — the far end of the sequence

Scenario the port exists for, only one testing the change it made.

26 operations sit in one `PatchOperationSequence`, and sequence **stops at first operation returning false**. Before port, `<success>Always</success>` was on sequence alone, silencing error without resuming run: one renamed animal cost its coats to every animal listed after it. Flag now on each operation.

- Spawn handful of **Zygolophodon**, last animal in file, and handful of **Andrewsarchus**, first.
- Both must show extra coats. Zygolophodon rolls at `0.6` with two coats, so spawn about 15: all 15 in original coat about one run in a million.
- If first animal has coats and last does not, something between them failing and sequence stopping there — would mean flag lost, since no operation in this file allowed to fail any more.

## C — the 67 coats and the three rotations

Manual. Pickle (`02-textures`) samples 13 files; `Check-Coats.ps1` proves every file exists. Neither shows what coat looks like walking. West not shipped: RimWorld mirrors `_east` when no `_west` exists, so animal walking west with far side reversed is correct.

**Preconditions**
- New colony, Core + Megafauna + this mod, original Colorful Coats off, developer mode on. Scenario A passed.
- Pause game, keep log open (see "What to search the log for").

**Actions**
1. Debug-spawn 12 **Chalicotherium** (five extra coats), 12 **Enhydriodon**, 12 **Purussaurus** (four each).
2. Count distinct extra coats on screen per species. Spawn more of species if coat still missing: at chance 0.8 a coat can simply not have come up yet; not a defect until about 40 animals.
3. Draft or move few animals of each species so they face **north**, **south**, **east**, then **west**.
4. For other 23 species: spawn 8 of each, one batch at a time, look at every extra coat once.

**Expected**
- Every one of 67 coats appears at least once across whole pass, in all four facings.
- North shows body with no head turned wrong, no missing or flipped piece, no white or pink fallback square.
- West shows mirrored east view, never missing texture.
- Log has no `in any active mod or in base resources` and no `Failed to find any textures at`.

**Record**: game build, Megafauna date, revision, language, species checked, any coat never seen (name it), log lines.

## D — the coat is per-animal and survives a reload

Coat **not stored**. Decompiling 1.6's `Verse.PawnGraphicUtils.TryGetAlternate`, called by every draw path of animal renderer, shows it derived on demand: `Rand` seeded with `pawn.thingIDNumber ^ 0xB415`, then `alternateGraphicChance` decides whether extra coat drawn and weighted pick chooses which. `Verse.Thing.overrideGraphicIndex` exists but pawn renderer does not read it, stays null for animal generated normally. (Earlier version of this section said index went into save under that name; guess, wrong.)

- Save with several coloured animals in view, quit to menu, load again.
- Each animal keeps **its own** coat. Holds because `thingIDNumber` saved and coat is pure function of it and of `alternateGraphics` list, so coat changing on reload means id changed or list did, not that stored value lost. Scenario therefore also guards list: reordering or adding coat in later version would reshuffle every coat already seen in existing saves, and this is how that would be noticed.

## E — added to a save in progress

Manual, not automatable: needs one save opened twice with different mod sets, harness stages one set per launch. Coat computed on every draw from animal's saved id and stored nowhere (see D), so adding mod should recolour animals **already in save**, deterministically. Expectation from code, decompiled from 1.6, not something anyone has seen: README and About say so.

**Preconditions**
- **Backup copy** of save made with Core + Megafauna and **without** this mod, holding at least 10 animals of covered species (mammoths easy case, chance 0.7) already spawned, plus few born or tamed.
- Original Colorful Coats off. Developer mode on. Note colony's animals: species, and screenshot of each.

**Actions**
1. Enable this mod after Megafauna, restart, load backup.
2. Look at every animal that was in save. Screenshot each against earlier picture.
3. Save, quit to menu, load again, look again.
4. Spawn 10 more animals of covered species and let one be born or arrive, if colony allows.

**Expected**
- Roughly chance of each kind (0.6 to 0.8) of **existing** animals now wear extra coat; rest keep original.
- Each animal shows **same** coat after reload of step 3. Coat changing between loads means D failed.
- New animals behave same as existing ones.
- Nothing logged about it, no red error at load.

**Record**: per animal, before and after; share recoloured against expected chance; log lines; language.
If no existing animal changes, say so plainly: contradicts code, README and About must change.

## F — removed from a save in progress

Manual, same reason as E. No index ever written into save, so nothing in it points into list that has gone.

**Preconditions**
- Save from end of E, this mod enabled, some animals visibly in extra coats, plus screenshot of each.

**Actions**
1. Disable this mod (keep Megafauna), restart, load save.
2. Look at every animal screenshotted in E, compare with original picture.
3. Save, quit, load again.

**Expected**
- Every animal back in original coat, no red error on load or save.
- Log names neither `alternateGraphics` nor any of 26 defNames.
- Save loads and runs normally for few in-game days.

**Record**: animals that did not go back (name them), log lines, language. Restore baseline mod list afterwards.

## G — the mod alone, with no Megafauna at all

- Enable this mod with Megafauna switched off.
- RimWorld flags missing dependency in mod list. That is `<modDependencies>` doing its job, not fault, and only warning player gets: patch itself unguarded, so simply finds nothing, says nothing.
- Game must still load, log must stay clean.

## H — the original enabled alongside

- Try enabling purpleyam's `purpleyam.colorfulcoats.spinomegafauna` at same time as this one.
- `<incompatibleWith>` should refuse pair, refusal is whole of protection.
- If both somehow load, **nothing logged, nothing visibly breaks**. Neither mod declares def; both add `<alternateGraphics>` element to same `PawnKindDef`. Confirmed by Pickle (e824ec2, incompat pass): mammoth's list grew from 3 entries to 6, not "last one wins" — `alternateGraphics` is `List<T>`, two `PatchOperationAdd` both append `<li>` rather than overwrite. Scalar `alternateGraphicChance` field *is* overwritten, stayed `0.7`, value this mod's own patch sets, since it loads after purpleyam's. Animals get coats either way, exactly why scenario cannot be judged from screen.

## I — the mod list entry itself

Manual: look at screen, not scenario Pickle can answer. Do once in English, once in French.

**Preconditions**
- Core + Megafauna + this mod enabled, nothing else of this family. Open Mods from main menu.

**Actions**
1. Select this mod in list. Read name, author line, description, version line.
2. Read Workshop-style preview shown in details pane.
3. Look at icon in list at size game draws it (about 32 px).
4. Switch game language (restart), repeat 1 to 3.

**Expected**
- Name reads `Colorful Coats - Megafauna! Renew (unofficial)`.
- Author line reads `purpleyam - 1.6 adapted by Nelim`.
- Description opens with UNOFFICIAL notice, ends with GitHub source link.
- Preview is `About/Preview.png` (896x504), with title, `Renew (unofficial)`, `1.6` badge visible.
- Icon is `About/ModIcon.png`. At 32 px only central smiley reads; owner kept this icon, so recorded limit, not finding. **Missing** or generic placeholder icon would be finding.
- No settings entry under Mod options for this mod, no MainButtons shortcut (none expected).
- Description in English in both game languages: by design, mod has no translated text.

**Record**: screenshot of list entry and details pane per language, anything differing from above.

## What no check offline can catch

Patch is bare `PatchOperationSequence` with no `PatchOperationFindMod` guard, every operation now flagged to succeed. Together, those two facts mean **renamed animal produces no log line, no failed operation, no visible error** — only animal quietly stopped having coats. Scenarios A and B exist because nothing else would ever tell us.

## Pickle passes required (AUDIT.md, "Passes Pickle")

Two passes, one per family that applies. Report names which is which (`-DepMap`).

| Family | Count | Map | Covers |
|---|---|---|---|
| Without the optional mods | 1 | `wsl-deps.sans-facultatifs.map` | Core, DLC, Harmony, RimLogging, Pickle, Megafauna and this mod. Only pass where capture is clean: 01 to 05 |
| With the optional mods, one per exclusive combination | 0 | none | Mod declares no optional mod: `loadAfter` names Megafauna only, hard dependency |
| One per declared incompatibility | 1 | `wsl-deps.incompat-spinomegafauna.map` | purpleyam's original alongside (`purpleyam.colorfulcoats.spinomegafauna`): 06. Replayed when original changes, not at each release |

One language: mod ships no text, so no English or French pass.

Order: what never ran and what is red goes first, one small ticket each (`-Filter`). Initial ticket plays every scenario once. Full passes replaying what already green filed together after commit and deployment, on published revision. Scenario in non-regression once it has green run on current logic; change to mod or to step it uses makes it new again. Currently every scenario new: none has had green run since 2026-09-28 step fixes, except ones recorded in `docs/runs/`.

Third pass exists for Workshop gallery only (`@gallery`): `wsl-deps.gallery.map`, Sanctuary Backlot fixture plus this mod's own staging. Proves no behaviour of mod: produces images person judges. Not validation pass.
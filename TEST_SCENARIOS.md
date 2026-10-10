# Test scenarios

One patch file, 201 textures, no assembly, no def of its own. There is very little here to break,
and everything that can break breaks **silently**. That is why this mod needs the game rather than
a checker.

**The absence of errors in the log is not a pass, and here it is less of a pass than usual.** Each
of the 26 operations carries `<success>Always</success>`, which is exactly what the port added: an
operation that finds no animal reports success and writes nothing. That flag buys the other 25
animals their coats when one defName moves, and it buys them by making the loss invisible. Only
animals on screen settle it.

## Shared setup and execution record

Use RimWorld 1.6 with Core, Megafauna and this mod in the order below; keep the original
Colorful Coats mod disabled except for scenario H. Enable developer mode. Record the game
build, Megafauna version/date, repository revision plus local changes, language and results.
Start a new colony for A-C, then save that colony for D. Use a backed-up existing Megafauna
save for E-F. G-H deliberately alter the mod list; restore the baseline afterward.
Run the suite in English and French, inspect Player.log after each load and check the
mod-list presentation in both languages. Keep observations and log excerpts with each result.
No settings page or MainButtons shortcut is expected from this mod.

Execution status: not run. These instructions are scenarios, not successful test results.

## Which scenarios have a Pickle feature

Written 2026-09-28 in `Tests/Pickle/`, see its `README.md` for scope and pass matrix. Written is not
run: nothing below has been played, and the three shared steps in `PickleTools/CoatSteps` have never run either.

| Scenario | In Pickle | Feature |
|---|---|---|
| A — the coats appear | yes | `03-coats-on-spawn` (mammoth, scorpion, Enhydriodon) |
| B — the far end of the sequence | yes | `01-patch-applied` for all 26, `04-sequence-ends` for the first and the last |
| C — the 67 coats and the three rotations | a sample | `02-textures` for 13 files, the rest is `Check-Coats.ps1` |
| D — per animal, survives a reload | yes | `05-coat-survives-reload` |
| E, F — added to or removed from a save | no | two launches of one save; stays manual |
| G — no Megafauna at all | no | the game's reaction to a missing hard dependency, not ours to test |
| H — the original alongside | yes | `06-original-alongside`, incompatibility pass only |
| I — the mod list entry | no | a look at a screen |

The `@review` capture in `03` is for a person to open; its green says the steps ran, not that the animals look different.

## What is settled before the game starts

`_tools/Check-Coats.ps1` answers the three questions that do not need RimWorld running: every
`texPath` has its three rotation files shipped, every shipped texture is referenced by some
`texPath`, and the 26 defNames still exist in Megafauna with no `alternateGraphics` of their own
already. It exits non-zero and names the file when one is missing.

```
pwsh -NoProfile -File _tools/Check-Coats.ps1
pwsh -NoProfile -File _tools/Check-Xml.ps1
```

`Check-Xml.ps1` parses all shipped XML, checks metadata, dependency and incompatibility declarations,
the GitHub link, the 26 operations and their success flags, XPath selection on minimal fixtures,
field names, probability bounds and 67 unique coat paths. Both scripts are local to this repository.
The former monorepo's four shared checkers are historical verification, not available local tests.
These static checks do not execute RimWorld's patch engine or validate types against its assembly.
Verified with PowerShell 7.6.5 on 2026-09-12. Windows PowerShell (`powershell.exe`) was blocked by
the machine's script execution policy; that policy was not changed.

None of that says the coats appear. That is what the scenarios below are for.

## Load order

```
Spino.Megafauna                Megafauna            1055485938   the target
nelim.colorfulcoats.megafauna  this mod                          after it
```

Megafauna **is** declared as a dependency here, unlike the Dodos mod of the same family: this
patch carries no `PatchOperationFindMod` guard, so nothing but the dependency tells a player the
mod is pointless without it.

`purpleyam.colorfulcoats.spinomegafauna` — the original — is named in `<incompatibleWith>` and
must stay off.

## What the patch aims at

26 animals, 67 extra coats, 201 textures at three rotations each. The chance is per animal:

| Chance | Animals |
|---|---|
| 0.8 | Chalicotherium (5 coats), Enhydriodon (4), Purussaurus (4) |
| 0.7 | Arthropleura, Deinotherium, Dinocrocuta, Elasmotherium, Procoptodon, Sivatherium, WoollyMammoth (3 each) |
| 0.6 | Paraceratherium (3), and Andrewsarchus, Castoroides, Daeodon, Diprotodon, Doedicurus, Gomphotaria, Josephoartigasia, Macrauchenia, Megalania, Platybelodon, Pulmonoscorpius, Smilodon, Titanis, Uintatherium, Zygolophodon (2 each) |

The animals sit in the patch in alphabetical order, Andrewsarchus first and Zygolophodon last.
That order is what scenario B is about.

## What to search the log for

`Player.log` sits in
`%USERPROFILE%\AppData\LocalLow\Ludeon Studios\RimWorld by Ludeon Studios\Player.log`.

Every string below was read out of 1.6's own `Assembly-CSharp.dll` rather than remembered. The
messages are UTF-16 there, so an ASCII `grep` finds none of them — and decoding the file as
Unicode from byte 0 finds only the ones that happen to start on an even byte. Search **both**
alignments, or half the table comes back absent:

```powershell
$b = [IO.File]::ReadAllBytes($dll)
foreach ($off in 0, 1) { [Text.Encoding]::Unicode.GetString($b, $off, $b.Length - $off).IndexOf($s) }
```

A string being in the assembly is not the same as a code path reaching it. The `Adding duplicate`
row below is in the assembly and unreachable, which is the more useful half of what it says.

| String in the log | Written by | What it would mean for this mod |
|---|---|---|
| `in any active mod or in base resources` | `ContentFinder<T>.Get` | A `texPath` with nothing behind it. The line quotes the path, so it names which coat and which rotation. |
| `Failed to find any textures at` | `Graphic_Multi.Init` | The same fault one level up: no rotation at all found for a coat. |
| `doesn't correspond to any field in type` | `DirectXmlToObject` | The failure the port was checked against. It would name `alternateGraphics` or `alternateGraphicChance` and mean 1.6 renamed the field under us. The animals would still load, walk, and simply be the wrong colour. |
| `Patch operation` … `failed` | `PatchOperation.Complete` | Expected count from this mod: **zero**, and here zero says nothing at all. Every operation carries `<success>Always</success>`. |
| `Adding duplicate` | `DefDatabase.Add` | **Never this mod.** The string is in the assembly, but nothing here can reach it: this mod declares no def of its own, and between two mods the message is unreachable anyway — `DefDatabase.AddAllInMods` removes the previous entry before adding, so a defName declared twice is overwritten in silence, last mod loaded winning. |
| `Could not find type named` | `DirectXmlToObject.ClassTypeOf` | Only two `Class=` values are used here, both `Verse` patch operations. This would mean 1.6 renamed one of them. |

Lines naming other mods are not ours to fix, and are worth leaving in whatever gets pasted back.

---

## A — the coats appear at all

The one scenario that matters. Everything else assumes this one passed.

- Dev mode on, spawn **20** with the debug spawn-pawn action, `WoollyMammoth`.
- Expect roughly **14 coloured, 6 original**. Each animal rolls the coats at `0.7`.
- **All 20 in the original coat fails the appearance check.** At `0.7` that sample has
  probability `0.3^20` (about one in 29 billion) if the expected independent rolls occur.
  Investigate target names, mod activation and patch loading; this result alone does not
  identify the cause.
- If they all come out original, open Megafauna's own defs and read the `defName` on its mammoth
  as it stands today, then compare it against the xpath in
  `Mod/Patches/ColorfulCoats_Megafauna.xml`. Nothing in the log will have said a word.

## B — the far end of the sequence

This is the scenario the port exists for, and the only one that tests the change it made.

The 26 operations sit in one `PatchOperationSequence`, and a sequence **stops at the first
operation that returns false**. Before the port, `<success>Always</success>` was on the sequence
alone, which silences the error without resuming the run: one renamed animal cost its coats to
every animal listed after it. The flag is now on each operation.

- Spawn a handful of **Zygolophodon**, the last animal in the file, and a handful of
  **Andrewsarchus**, the first.
- Both must show extra coats. Zygolophodon rolls at `0.6` with two coats, so spawn about 15 of
  them: all 15 in the original coat is about one run in a million.
- If the first animal has coats and the last does not, something between them is failing and the
  sequence is stopping there — which would mean a flag was lost, since no operation in this file
  is allowed to fail any more.

## C — the 67 coats and the three rotations

Manual. Pickle (`02-textures`) samples 13 files; `Check-Coats.ps1` proves every file exists. Neither shows what a
coat looks like walking. West is not shipped: RimWorld mirrors `_east` when no `_west` exists, so an animal walking
west with its far side reversed is correct.

**Preconditions**
- New colony, Core + Megafauna + this mod, original Colorful Coats off, developer mode on. Scenario A passed.
- Pause the game, and keep the log open (see "What to search the log for").

**Actions**
1. Debug-spawn 12 **Chalicotherium** (five extra coats), 12 **Enhydriodon** and 12 **Purussaurus** (four each).
2. Count the distinct extra coats on screen per species. Spawn more of a species if one coat is still missing:
   at chance 0.8 a coat can simply not have come up yet; that is not a defect until about 40 animals.
3. Draft or move a few animals of each species so they face **north**, **south** and **east**, then **west**.
4. For the other 23 species: spawn 8 of each, one batch at a time, and look at every extra coat once.

**Expected**
- Every one of the 67 coats appears at least once across the whole pass, in all four facings.
- North shows a body with no head turned wrong, no missing or flipped piece, no white or pink fallback square.
- West shows the mirrored east view, never a missing texture.
- The log has no `in any active mod or in base resources` and no `Failed to find any textures at`.

**Record**: game build, Megafauna date, revision, language, species checked, any coat never seen (name it), log lines.

## D — the coat is per-animal and survives a reload

The coat is **not stored**. Decompiling 1.6's `Verse.PawnGraphicUtils.TryGetAlternate`, which every
draw path of the animal renderer calls, shows it derived on demand: `Rand` is seeded with
`pawn.thingIDNumber ^ 0xB415`, then `alternateGraphicChance` decides whether an extra coat is drawn
and a weighted pick chooses which. `Verse.Thing.overrideGraphicIndex` exists but the pawn renderer
does not read it, and it stays null for an animal generated normally. (An earlier version of this
section said the index went into the save under that name; that was a guess and it was wrong.)

- Save with several coloured animals in view, quit to the menu, load again.
- Each animal keeps **its own** coat. That holds because `thingIDNumber` is saved and the coat is a
  pure function of it and of the `alternateGraphics` list, so a coat that changes on reload means
  the id changed or the list did, not that a stored value was lost. This scenario therefore also
  guards the list: reordering or adding a coat in a later version would reshuffle every coat
  already seen in existing saves, and this is how that would be noticed.

## E — added to a save in progress

Manual, and not automatable: it needs one save opened twice with different mod sets, and the harness stages one set per
launch. The coat is computed on every draw from the animal's saved id and stored nowhere (see D), so adding the mod
should recolour the animals **already in the save**, deterministically. That is the expectation from the code,
decompiled from 1.6, not something anyone has seen: README and About say so.

**Preconditions**
- A **backup copy** of a save made with Core + Megafauna and **without** this mod, holding at least 10 animals of
  covered species (mammoths are the easy case, chance 0.7) already spawned, plus a few born or tamed.
- Original Colorful Coats off. Developer mode on. Note the colony's animals: species, and a screenshot of each.

**Actions**
1. Enable this mod after Megafauna, restart, load the backup.
2. Look at every animal that was in the save. Screenshot each against its earlier picture.
3. Save, quit to the menu, load again, look again.
4. Spawn 10 more animals of a covered species and let one be born or arrive, if the colony allows.

**Expected**
- Roughly the chance of each kind (0.6 to 0.8) of the **existing** animals now wear an extra coat; the rest keep the original.
- Each animal shows the **same** coat after the reload of step 3. A coat that changes between loads means D failed.
- New animals behave the same as existing ones.
- Nothing is logged about it, no red error at load.

**Record**: per animal, before and after; share recoloured against the expected chance; log lines; language.
If no existing animal changes, say so plainly: it contradicts the code, and the README and About must change.

## F — removed from a save in progress

Manual, same reason as E. No index was ever written into the save, so nothing in it points into a list that has gone.

**Preconditions**
- The save from the end of E, with this mod enabled and some animals visibly in extra coats, plus a screenshot of each.

**Actions**
1. Disable this mod (keep Megafauna), restart, load the save.
2. Look at every animal screenshotted in E and compare with its original picture.
3. Save, quit, load again.

**Expected**
- Every animal is back in its original coat, with no red error on load or on save.
- The log names neither `alternateGraphics` nor any of the 26 defNames.
- The save loads and runs normally for a few in-game days.

**Record**: animals that did not go back (name them), log lines, language. Restore the baseline mod list afterwards.

## G — the mod alone, with no Megafauna at all

- Enable this mod with Megafauna switched off.
- RimWorld flags the missing dependency in the mod list. That is `<modDependencies>` doing its
  job, not a fault, and it is the only warning a player gets: the patch itself is unguarded, so it
  simply finds nothing and says nothing.
- The game must still load, and the log must stay clean.

## H — the original enabled alongside

- Try to enable purpleyam's `purpleyam.colorfulcoats.spinomegafauna` at the same time as this one.
- `<incompatibleWith>` should refuse the pair, and that refusal is the whole of the protection.
- If both somehow load, **nothing is logged and nothing visibly breaks**. Neither mod declares a
  def; both add an `<alternateGraphics>` element to the same `PawnKindDef`. Confirmed by Pickle
  (e824ec2, incompat pass): the mammoth's list grew from 3 entries to 6, not "the last one wins" —
  `alternateGraphics` is a `List<T>`, and two `PatchOperationAdd` both append an `<li>` to it rather
  than overwriting it. The scalar `alternateGraphicChance` field *is* overwritten, and stayed `0.7`,
  the value this mod's own patch sets, since it loads after purpleyam's. The animals get coats
  either way, which is exactly why this scenario cannot be judged from the screen.

## I — the mod list entry itself

Manual: a look at a screen, not a scenario Pickle can answer. Do it once in English and once in French.

**Preconditions**
- Core + Megafauna + this mod enabled, nothing else of this family. Open Mods from the main menu.

**Actions**
1. Select this mod in the list. Read the name, the author line, the description and the version line.
2. Read the Workshop-style preview shown in the details pane.
3. Look at the icon in the list at the size the game draws it (about 32 px).
4. Switch the game language (restart), repeat 1 to 3.

**Expected**
- The name reads `Colorful Coats - Megafauna! Renew (unofficial)`.
- The author line reads `purpleyam - 1.6 adapted by Nelim`.
- The description opens with the UNOFFICIAL notice and ends with the GitHub source link.
- The preview is `About/Preview.png` (896x504), with the title, `Renew (unofficial)` and the `1.6` badge visible.
- The icon is `About/ModIcon.png`. At 32 px only the central smiley reads; the owner kept this icon, so it is a
  recorded limit and not a finding. A **missing** or generic placeholder icon would be a finding.
- No settings entry appears under Mod options for this mod, and no MainButtons shortcut exists (none is expected).
- The description is in English in both game languages: that is by design, the mod has no translated text.

**Record**: screenshot of the list entry and the details pane per language, and anything that differs from the above.

## What no check offline can catch

The patch is a bare `PatchOperationSequence` with no `PatchOperationFindMod` guard, and every
operation is now flagged to succeed. Taken together, those two facts mean **a renamed animal
produces no log line, no failed operation and no visible error** — only an animal that quietly
stopped having coats. Scenarios A and B exist because nothing else would ever tell us.

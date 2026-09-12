# Test scenarios

One patch file, 201 textures, no assembly, no def of its own. There is very little here to break,
and everything that can break breaks **silently**. That is why this mod needs the game rather than
a checker.

**The absence of errors in the log is not a pass, and here it is less of a pass than usual.** Each
of the 26 operations carries `<success>Always</success>`, which is exactly what the port added: an
operation that finds no animal reports success and writes nothing. That flag buys the other 25
animals their coats when one defName moves, and it buys them by making the loss invisible. Only
animals on screen settle it.

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
Spino.Megafauna                     Megafauna            1055485938   the target
nelim.colorfulcoats.megafaunarenew  this mod                          after it
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
- **All 20 in the original coat means the defName moved**, not bad luck: at `0.7` a clean sweep is
  about one run in thirty billion (`0.3^20`).
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

201 textures: 67 coats, three rotations each. West is not shipped; RimWorld mirrors `_east` when
no `_west` exists, so an animal walking west showing its far side reversed is correct.

- The three generous ones are worth the spawn on their own: **Chalicotherium** at five extra
  coats, **Enhydriodon** and **Purussaurus** at four. Spawn a dozen of each and look for all of
  them.
- Watch a few walk in each direction, and check the north view in particular: it is the one that
  hides the head, so a wrong file there is easy to miss.
- Any missing file shows up in the log with its path, per the table above.

## D — the coat is per-animal and survives a reload

`Verse.Pawn.overrideGraphicIndex` records which entry of `alternateGraphics` a pawn drew, and it
goes into the save under that same name. The label is present in 1.6's assembly.

- Save with several coloured animals in view, quit to the menu, load again.
- Each animal keeps **its own** coat. A coat that jumps to a different animal means the index is
  being re-rolled rather than read back, which would also mean every reload reshuffles the herd.

## E — added to a save in progress

The README says this is safe. What "safe" means is worth pinning down, because the index is stored
per animal: an animal generated before the mod was added has **no** index, and no index means the
coat it was born with.

- Add the mod to a running colony that already has Megafauna animals.
- Expect the animals already in the save to stay exactly as they were, and **new** ones — spawned,
  born, or arriving with a caravan or a raid — to draw from the coats.
- If animals already on the map change colour on load, that is still not a fault, but it
  contradicts what was just written above and is worth reporting.

## F — removed from a save in progress

The other half of the same claim, and the half no checker can reach. Saved indices now point into
a list the def no longer has.

- Remove the mod, load the same save.
- The animals go back to their original coats, and nothing in the log names
  `overrideGraphicIndex`, `alternateGraphics`, or any of the 26 defNames.

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
  def; both add an `<alternateGraphics>` element to the same `PawnKindDef`, and a field written
  twice is simply read twice, the last one winning. The animals get coats either way, which is
  exactly why this scenario cannot be judged from the screen.

## I — the mod list entry itself

- The name reads `Colorful Coats - Megafauna! Renew (unofficial)`.
- The Workshop banner is `About/Preview.png`, 896x504, and says `Renew` rather than `1.6`.
- The icon is drawn at about 32 px in the mod list, and at that size `About/ModIcon.png` does not
  resolve into anything: it is a mascot ringed by six animals, and the mammoth's tusks are gone.
  **This is known and kept**, so it is not a finding. The alternative was a 64% crop keeping the
  mascot and cutting the animals, which is what the Dodos icon of this family went through; the
  full-frame picture was preferred here. Nothing to report on this line.

## What no check offline can catch

The patch is a bare `PatchOperationSequence` with no `PatchOperationFindMod` guard, and every
operation is now flagged to succeed. Taken together, those two facts mean **a renamed animal
produces no log line, no failed operation and no visible error** — only an animal that quietly
stopped having coats. Scenarios A and B exist because nothing else would ever tell us.

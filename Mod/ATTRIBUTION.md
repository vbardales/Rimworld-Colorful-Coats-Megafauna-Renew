# Colorful Coats - Megafauna! — attribution

A 1.6 port of **Colorful Coats - Megafauna!**, by **purpleyam**
([2560113727](https://steamcommunity.com/sharedfiles/filedetails/?id=2560113727)).

## Status: public

The source mod is **dead** — it declares 1.4 and nothing further — and **no licence is declared
anywhere**, checked at the four places one could be: no `LICENSE` file in the mod, no mention in
its `About.xml`, no linked repository (`<url>` is absent entirely), and nothing in the body of
the description on its Steam page. That last check is the one that matters: it is the one that
was skipped once on たたら製鉄, whose ban on redistribution turned out to be a sentence in its
description and nowhere else.

This is the usual convention for ports on the RimWorld Workshop: republished with **credit by
name** and **removal on request, without argument**. The `<author>` field reads
`purpleyam - 1.6 port: nelim`, and the removal clause is in the description.

purpleyam published four mods under the *Colorful Coats* name. Three are ported, each in its own
repository; the fourth is not, for the reason given at the end of this file.

## What was carried over

Everything the mod contained, which is one patch file and 201 textures. There is no `Defs`
folder, no assembly and no C# — the mod does one thing and does it in XML.

| | |
|---|---|
| `Patches/ColorfulCoats_Megafauna.xml` | one line added per operation, see below |
| `Textures/Things/Pawn/Animal/…` (201 files, 67 coats) | purpleyam's, byte for byte |

The 26 animals, their 67 coats and every `alternateGraphicChance` are purpleyam's, unchanged:

| animal | chance | extra coats |
|---|---|---|
| Chalicotherium | 0.8 | 5 |
| Enhydriodon, Purussaurus | 0.8 | 4 |
| Arthropleura, Deinotherium, Dinocrocuta, Procoptodon | 0.7 | 3 |
| Elasmotherium, Sivatherium, Woolly mammoth | 0.7 | 3 |
| Paraceratherium | 0.6 | 3 |
| Andrewsarchus, Castoroides, Daeodon, Diprotodon, Doedicurus | 0.6 | 2 |
| Gomphotaria, Josephoartigasia, Macrauchenia, Megalania | 0.6 | 2 |
| Platybelodon, Pulmonoscorpius, Smilodon, Titanis | 0.6 | 2 |
| Uintatherium, Zygolophodon | 0.6 | 2 |

`About/Preview.png` was **not** carried over; the port has its own. purpleyam's four extra
screenshots in `About/` were dropped: RimWorld reads `Preview.png` and `ModIcon.png` from that
folder and nothing else, and those four were **7.6 MB of the mod's 13** — more than the textures
themselves.

## What the mod does

`PawnKindDef` carries two fields the game has had for a long time and still has in 1.6, checked
by reflection against `Assembly-CSharp.dll`:

```
Verse.PawnKindDef.alternateGraphics      List<Verse.AlternateGraphic>
Verse.PawnKindDef.alternateGraphicChance float
Verse.AlternateGraphic.texPath           string
```

A `PatchOperationAdd` puts both onto each animal's `PawnKindDef`, and the game then rolls a coat
for each animal as it is generated. That is the entire mod.

## Nothing was broken

This is the rare port where 1.6 had broken nothing at all, and the check is worth recording
because it is what makes that claim more than an assumption.

- **Both `PawnKindDef` fields still exist under those names.** This is the failure mode that
  kills ported XML quietly: RimWorld does not stop for an element that matches no field, it logs
  one line and loads with the field unset — the animal would load, walk, and simply be the wrong
  colour.
- **The patch is not name-guarded**, unlike the other Colorful Coats mods. It is a bare
  `PatchOperationSequence` with `<success>Always</success>`, so it applies wherever the defs are
  found and stays silent where they are not. That is why the rename that broke the Dodos mod
  could not touch this one. Megafauna is in any case still called `Megafauna`, is still
  `Spino.Megafauna`, and declares 1.6.
- **All 26 `defName`s still exist** in Megafauna's 1.6 release.
- **All 67 `texPath` values resolve** to textures the mod ships, and no shipped texture is
  unreferenced.
- **Megafauna does not define `alternateGraphics` on any of them already**, so the patch is not
  fighting anything.

## The one change to the patch, and why

Each of the 26 operations now carries `<success>Always</success>`.

They sit inside a single `PatchOperationSequence`, and a sequence **stops at the first operation
that returns false** — it does not skip and carry on. `<success>Always</success>` was on the
sequence itself, which silences the error but does not resume the run. So if a future release of
Megafauna renamed one animal, that animal and **every animal listed after it** would lose their
coats, with nothing in the log to say so.

purpleyam already wrote the Vanilla Animals Expanded mod this way, one flag per operation. This
brings this one into line. Nothing about it changes what happens today.

## The fourth Colorful Coats mod is not ported

**Colorful Coats - Cats and Dogs!**
([2388932599](https://steamcommunity.com/sharedfiles/filedetails/?id=2388932599)) has nothing
left to port: its 14 patched `PawnKindDef`s, their coat chances and its 78 textures are all
already inside **Colorful Coats - Vanilla Animals Expanded!**, identical — the textures match
byte for byte, only the folder names differ. It existed because *Vanilla Animals Expanded — Cats
and Dogs* used to be a module of its own; Vanilla Animals Expanded has since absorbed it. Its own
target, `VanillaExpanded.VAECD`, stops at 1.3.

## Thanks

- **purpleyam**, for the coats.
- **Spino**, for Megafauna.

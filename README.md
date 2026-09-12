# Colorful Coats - Megafauna! Renew (unofficial)

UNOFFICIAL. This mod is published without the original author's explicit consent. If the original author contacts me to request its removal, I undertake to take it down promptly.

Port of **purpleyam's Colorful Coats - Megafauna!** to RimWorld 1.6.

**I am not the author of this mod.** The coats and the whole idea are purpleyam's — all I did was
the work needed to run it on 1.6. Credit goes to them; mistakes in the port are mine.

Original mod: https://steamcommunity.com/sharedfiles/filedetails/?id=2560113727 — declares 1.4 and
nothing further in the installed source copy. The source audit of 2026-09-12 recorded
its last Workshop update as 2022-10-26; abandonment was not established.

## What the mod does

Coat variations for 26 of Megafauna's prehistoric animals: 67 extra coats, between two and five
each, with a 60% to 80% chance of an animal getting one. A mammoth herd becomes a herd of
individuals rather than twelve copies of one mammoth.

One patch file, 201 textures, no `Defs`, no assembly, no Harmony, no DLC. It changes animal
graphics. Adding or removing it on an existing save and coat persistence remain unverified
in game; use a backup when running the scenarios in TESTING.md.

## What it needs

**Megafauna**, by Spino — https://steamcommunity.com/workshop/filedetails/?id=1055485938 —
declared as a dependency, and alive on 1.6.

## What was checked, and what it found

The recorded compatibility inspection and current static checks found no field, target or
texture-path mismatch. In-game behavior has not yet been validated.

**The two fields still exist under those names.** Verified by reflection against the 1.6
`Assembly-CSharp.dll`:

```
Verse.PawnKindDef.alternateGraphics      List<Verse.AlternateGraphic>
Verse.PawnKindDef.alternateGraphicChance float
Verse.AlternateGraphic.texPath           string
```

This is the failure mode that kills ported XML quietly. RimWorld does not stop for an element that
matches no field — it logs one line and loads with the field unset. A renamed field here would
have left every animal loading, walking and simply being the wrong colour.

**The patch is not name-guarded**, unlike the other mods in this family. It is a bare
`PatchOperationSequence`, so it applies wherever the defs are and stays quiet where they are not.
That is why the rename that broke the Dodos mod could not touch this one. Megafauna is in any case
still called `Megafauna`, still `Spino.Megafauna`, and declares 1.6.

**All 26 `defName`s still exist**, all 67 `texPath`s resolve to shipped textures, no shipped
texture is unreferenced, and Megafauna does not already define `alternateGraphics` on any of them.

## The one change to the patch

Each of the 26 operations now carries `<success>Always</success>`.

`PatchOperationSequence` **stops at the first operation that returns false** — it does not skip and
carry on. The flag was on the sequence, which silences the error but does not resume the run. So a
single renamed animal would have cost that animal and **every animal listed after it** their
coats, with nothing in the log to say so.

purpleyam already wrote the Vanilla Animals Expanded mod this way, one flag per operation. This
brings this one into line. It changes nothing about what happens today.

The four large screenshots left in `About/` were also dropped. RimWorld reads `Preview.png` and
`ModIcon.png` from that folder and nothing else, and those four were **7.6 MB of the mod's 13** —
more than the textures.

## Layout

```
Mod/          published — the junction into RimWorld/Mods points here
  About/
  Patches/
  Textures/
```

Everything outside `Mod/` — this file, the changelog, the attribution, the test scenarios and the
full-resolution art under `Art/` — stays out of the Steam upload by construction.
`SteamUGC.SetItemContent` takes the junction's target directory as it stands on disk, with no
filtering.

## Credit and removal

The source audit of 2026-09-12 found no explicit licence, redistribution permission or
prohibition in the installed original, its Steam description and comments, or the author's
public profile. No source repository was linked in the inspected material. This is a bounded
finding, not proof of abandonment or permission. The public repository retains its historical
`silent` classification pending verification of that classification's abandonment premise.
Credit and removal on request do not grant redistribution rights. If purpleyam would rather
this did not exist, say so and it comes down.

See [TESTING.md](TESTING.md) for what the game has to settle, [ATTRIBUTION.md](ATTRIBUTION.md) for
what was taken and what was changed, [LICENSE](LICENSE) for what the MIT grant does and does not
cover, and [CHANGELOG.md](CHANGELOG.md).

The port work was done with the help of an AI assistant (Claude, by Anthropic), under human
direction. Static checks pass; the in-game scenarios have not been executed.

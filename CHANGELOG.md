# Changelog

All notable changes to this mod are documented here.

## [1.0.0] — 2026-09-05

First release. Port of purpleyam's **Colorful Coats - Megafauna!** to RimWorld 1.6.

Nothing in this mod was broken by 1.6. The one change to the patch is hardening, not a repair.

### Added

- `About/Preview.png`, drawn for this port and engraved at final size by `Art/preview.html`, with
  the full-resolution source kept in `Art/` rather than in `About/`.
- `About/ModIcon.png`. It does not read at 32 px, which is the size the mod list draws it at, and
  is recorded as a known failure in `TESTING.md` rather than left to be rediscovered.
- `TESTING.md`, nine in-game scenarios, and `_tools/Check-Coats.ps1` for the three questions that
  can be answered without starting the game.
- All of the above is port work and is listed in `LICENSE` among what the MIT grant covers.
  purpleyam's coats and textures stay outside it, as they always were.

### Changed

- `<success>Always</success>` added to each of the 26 `PatchOperationAdd` operations.
  `PatchOperationSequence` **stops at the first operation that returns false** — it does not skip
  it and carry on. The flag was on the sequence itself, which silences the error but does not
  resume the run, so one renamed animal would have cost that animal and every animal listed after
  it their coats, with nothing in the log to say so. purpleyam already wrote the Vanilla Animals
  Expanded mod this way, one flag per operation. Nothing changes today: all 26 animals are present.
- `packageId` changed from `purpleyam.colorfulcoats.spinomegafauna` to
  `nelim.colorfulcoats.megafaunarenew`. `<incompatibleWith>` keeps purpleyam's, which is what that
  field is for: the two mods patch the same 26 animals, and only one of them may.
- `<name>` changed from `Colorful Coats - Megafauna!` to `Colorful Coats - Megafauna! Renew`, in
  line with the Dodos port of the same family. Nothing was ever published under the earlier form
  of the name, which said 1.6 where the repository said Renew, so this replaces it rather than
  succeeding it.
- `<supportedVersions>` set to 1.6.
- `About/PublishedFileId.txt` dropped: it names purpleyam's Workshop item.

### Removed

- `About/colorfulmegafauna1.png` through `4.png`, **7.6 MB of the mod's 13** — more than the 4.6 MB
  of textures. RimWorld reads `Preview.png` and `ModIcon.png` from that folder and nothing else;
  those four were Workshop screenshots, which live on the Steam page and not in the download.
- `About/Preview.png`, purpleyam's own. The port has its own showcase.

### Unchanged

- The 26 animals, their 67 coats, every `alternateGraphicChance`, and the 201 textures, byte for
  byte.
- The absence of a `PatchOperationFindMod` guard. The patch is a bare sequence, so it applies
  wherever the defs are found and stays silent where they are not — which is why the mod rename
  that broke the Dodos mod in this family could not touch this one. Adding a name guard would only
  have narrowed it.
- The `defName`s the patch aims at, which are not this mod's to choose.

### Verified

- `Verse.PawnKindDef.alternateGraphics` and `alternateGraphicChance`, and
  `Verse.AlternateGraphic.texPath`, all still exist under those names in 1.6 — checked by
  reflection against `Assembly-CSharp.dll`. An XML element matching no field does not stop the
  game: it logs one line and loads with the field unset, so the animals would have loaded, walked,
  and simply been the wrong colour.
- All 26 `defName`s still exist in Megafauna's 1.6 release, which is still named `Megafauna` and
  still `Spino.Megafauna`.
- All 67 `texPath` values resolve to shipped textures; no shipped texture is unreferenced.
- Megafauna does not already define `alternateGraphics` on any of the 26.

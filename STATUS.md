---
mod:          Colorful Coats - Megafauna! Renew
packageId:    nelim.colorfulcoats.megafaunarenew
repo:         Rimworld-Colorful-Coats-Megafauna-Renew
visibility:   public
detached:     yes
stage:        done
licence:      silent
licence_at:   four places, the About and the Steam page among them
dependencies: declared
showcase:     complete
tested_on:
workshop:
remaining:
  - unverified: no coat has ever been seen to appear in game
session:      local_aa123338-053f-4ea8-a01d-068bdd74a18c
updated:      2026-09-12, held by the mod's own thread
---

# Colorful Coats - Megafauna! Renew — status

Read by a sweep across every mod, rather than by asking each thread in turn. It lives at the
root, never inside `Mod/`, so Steam never receives it. Dropped here by the sweep of 2026-09-12 and
held since by this mod's thread, which updates it in the commit that changes what it describes.

## What the fields say

`stage: done` in the repository's sense: the port work is finished. It does not mean tested, which
is what `tested_on` is for, and that field is empty because the mod has never run. It is detached
from the monorepo and its repository is public. Nothing has gone to the Workshop: there is no
`About/PublishedFileId.txt`, so `workshop` stays empty.

`licence: silent` — purpleyam declared none, checked at the four places one could be, the body of
the Steam description included. Republished under the usual convention for abandoned mods: credit,
a link to the original, removal on request. `ATTRIBUTION.md` records what was taken, and `LICENSE`
what the MIT grant does and does not cover.

`showcase: complete` — `About/Preview.png` and `About/ModIcon.png` both exist. The icon does not
resolve at 32 px, which is **known and kept** by the repository owner's decision rather than a
fault awaiting a fix. `TESTING.md` says so on the line where a tester would otherwise report it,
and that is why `remaining` carries no trace of it: listing a closed question reopens it at every
reading.

## What is left

One thing, and it cannot be done from here: start the game. Scenarios A and B of `TESTING.md` are
the two that decide, a coat appearing and an animal already placed on a map keeping its own.

Everything that could be settled without the game has been, and passes: `_tools/Check-Coats.ps1`
for the 201 textures and the 26 defNames, and the monorepo's four shared checkers.

`licence` vocabulary: `open` an explicit licence, `silent` no licence and a dead source,
`alive` no licence but a living source, `forbidden` a written refusal, `original` owing nothing
to anyone — not a name, not an idea traceable to one mod, not a value derived from its assets.
`stage` vocabulary: `port`, `showcase`, `preTest`, `done`, `tested`, `published`.
`remaining` vocabulary: `feature` for something missing from a first release, `defect` for a known
fault left unfixed, `unverified` for what could not be checked.

- **`dependencies`** — `declared` when every mod this one needs is named in the About's
  `modDependencies`, `to check` when a non-vanilla `loadAfter` suggests a dependency that is not
  declared, `none` when the mod needs nothing. An undeclared dependency is not cosmetic: on
  2026-09-11 Reequilibrage animaux took 47 vanilla animals down with it, Muffalo included, because
  the class it injects belongs to a mod that was not declared and not loaded.

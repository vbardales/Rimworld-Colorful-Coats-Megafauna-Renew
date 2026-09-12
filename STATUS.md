---
mod:          Colorful Coats - Megafauna! Renew (unofficial)
packageId:    nelim.colorfulcoats.megafaunarenew
repo:         Rimworld-Colorful-Coats-Megafauna-Renew
remote:       https://github.com/vbardales/Rimworld-Colorful-Coats-Megafauna-Renew.git
local_folder: C:/Users/nelim/Documents/rimworld/ColorfulCoatsMegafaunaRenew
maintainer:   Codex, this repository's dedicated task
visibility:   public
visibility_reason: documented public silent continuation, no prohibition found; unofficial under PUBLISHING.md
redistribution_permission: not found in sources checked 2026-09-12
source_maintenance: last update 2022-10-26; abandonment not explicitly confirmed
github_visibility: public (technical setting checked 2026-09-12)
detached:     yes
stage:        done
licence:      silent
port_licence: MIT (port additions only; original assets excluded)
licence_at:   installed original files, live Steam description, all 15 item comments, public author profile (2026-09-12)
dependencies: declared
showcase:     complete
tested_on:
automated_tests: passed, 2026-09-12, PowerShell 7.6.5
manual_tests: nine scenarios documented in TESTING.md, not executed
workshop:
remaining:
  - unverified: no coat has ever been seen to appear in game
  - unverified: redistribution permission for original assets not established
session:      local_aa123338-053f-4ea8-a01d-068bdd74a18c
updated:      2026-09-12, held by the mod's own thread
---

# Colorful Coats - Megafauna! Renew (unofficial) — status

Read by a sweep across every mod, rather than by asking each thread in turn. It lives at the
root, never inside `Mod/`, so Steam never receives it. Dropped here by the sweep of 2026-09-12 and
held since by this mod's thread, which updates it in the commit that changes what it describes.

## Repository ownership and checks — 2026-09-12

Codex now maintains this file from this repository's dedicated task. Its scope is the single
local repository at `C:/Users/nelim/Documents/rimworld/ColorfulCoatsMegafaunaRenew`, not the former
monorepo. Keep this status current with changes and verification results, including before commit.

Verified locally: the Git top-level is this folder, its `.git` is a directory inside this folder,
and Git reports no superproject. The fetch and push remote is the `remote` URL above.
Verified on GitHub with `gh repo view`: the technical setting is `PUBLIC`, `isPrivate` is `false`.
That check supports `github_visibility` only; it does not justify `visibility`.

## Distribution visibility and justification

`visibility: public` follows the documented decision in `ATTRIBUTION.md` and the explicit rule in
`../PUBLISHING.md`, Licence section (2026-09-12): a public mod classified `silent`, with no prohibition
found, uses `(unofficial)` and the prescribed credit/removal notice. This mod was classified `silent`
as an inactive continuation; the source audit found no prohibition, no update since October 2022,
and no explicit permission. It did not establish resumed maintenance of this original mod.

The rule requires private status for `alive` and applies `(prohibited)` to private builds. It does
not require every `silent` mod lacking permission to become private. The previous switch to private
was an assistant error based on an added criterion, and is reversed. The public classification is
still a project distribution decision, not a claim of author consent or an open licence for the assets.
The source audit and its limits remain recorded below. No remote visibility change is needed or made.

## Original-source audit — 2026-09-12

- [Original Steam item](https://steamcommunity.com/sharedfiles/filedetails/?id=2560113727): read
  live by direct HTTPS (HTTP 200). It names purpleyam and displays its last update as 26 October 2022.
  The full description contains no explicit licence, redistribution permission or prohibition.
  No source repository is linked in that description. Its links point to other Workshop mods.
- Installed original at `C:/Program Files (x86)/Steam/steamapps/workshop/content/294100/2560113727`:
  `About/PublishedFileId.txt` matches the item ID. Full recursive inventory: 206 PNGs, two XML files,
  one TXT file; no licence file. `About/About.xml` declares versions 1.2, 1.3 and 1.4, the packageId
  `purpleyam.colorfulcoats.spinomegafauna`, no `url` and no licence. Neither XML contains a permission
  statement. This is the installed source copy, not a newly downloaded archive; its server revision
  was not independently compared.
- All 15 comments on the original item were retrieved through Steam's comment endpoint and read.
  No explicit redistribution permission or prohibition was found. purpleyam's visible comment
  thanks players; it does not grant permission. Player reports of 1.5 compatibility do not establish
  maintenance or author consent.
- [purpleyam's public profile](https://steamcommunity.com/profiles/76561198342847927/) was read:
  no visible licence, permission statement, abandonment statement or source repository link found.
  An offline profile and an old mod version do not prove that the author has abandoned the work.
- The original description credits the base textures to Spino. The [Megafauna page](https://steamcommunity.com/sharedfiles/filedetails/?id=1055485938)
  and its installed About.xml contain no explicit reuse permission; no licence file was found in
  the installed Megafauna directory. The [texture reuse discussion](https://steamcommunity.com/workshop/filedetails/discussion/1055485938/2250056952666859136/)
  contains a request and two replies, but no approval from Spino. This does not establish permission
  for the underlying artwork either.

Conclusion: no explicit licence, permission or prohibition was found within this stated scope.
There was no linked source repository to audit; this is not a claim that no repository exists anywhere.
`silent` is retained as the legacy classification for no declared licence, with the abandonment
assumption explicitly unconfirmed. The earlier unconditional assertion that the source was dead is
not supported by this audit. Resolve the permission question before treating distribution as authorized.

The title already carries the appropriate `(unofficial)` suffix in `Mod/About/About.xml` and
`README.md`; no additional suffix is needed. The About description includes
https://github.com/vbardales/Rimworld-Colorful-Coats-Megafauna-Renew, also present in its `url` field.

Licence, as recorded in both `LICENSE` and `Mod/LICENSE`: **MIT, copyright (c) 2026 nelim, for
the port additions only**. The original coats, chances and 201 textures by purpleyam are explicitly
excluded; the repository records no declared licence for them. Thus `licence: silent` describes
the original material, while `port_licence` describes the additions. Credit and removal on request
are the stated redistribution practice, not a licence grant for the original material.
Both licence files have identical SHA-256 hashes. The MIT scope is justified by their explicit
`SCOPE OF THE ABOVE` section: the port flags, showcase, checker, packaging and documentation are
covered, while the original material is expressly excluded. The direct source audit above supersedes
the earlier investigation for current licence findings; neither establishes consent from purpleyam.

## Test audit — 2026-09-12

### Preview overlay — 2026-09-12

- Final composition: `Mod/About/Preview.png`, 896 x 504, 682,412 bytes (below 900 KB).
  Illustration retained without regeneration: copied the existing, text-free `Art/Preview-source.png`
  to the canonical `Art/Preview.png`. Their SHA-256 hashes match; the original remains intact.
  No illustration was replaced, so no replacement archive was needed.
- Composition and rendering: `Art/preview.html`, `Art/render-preview.cjs`. Final colour authority:
  `Art/preview-palette.json`, loaded by the HTML. The veil comes from the charcoal stone and shaded
  ground. The secondary ink extends the dominant warm ochre/brown family of dry grasses and mammoth
  coats, lightened for readability. The orange-rust accent comes from the central mammoth's red coat,
  with stronger saturation; it is visibly redder and more vivid than the pale ochre secondary ink.
- Original base title and summary preserved. `Renew` is a direct 65% span in the title; the separate
  `(unofficial)` tag follows the public/silent rule in `PUBLISHING.md` and the About name.
  The About name and packageId were not changed by this overlay work. Version 1.6 is read from the
  highest stable version actually declared in `Mod/About/About.xml`.
- Text starts at 50/54 px; title 46 px/600, summary 21 px/400 with a 430 px box, tag 24 px/400.
  The accent rule and the 80 px version triangle use the specified dimensions and placement.
  Dark-veil shadow follows the guide. Veil opacity is held longer (through 60% of the ellipse)
  because the initial fade failed contrast over snow behind the summary.
- Chrome rendered at native final size after `document.fonts.ready` and source image decoding.
  CDP confirms Segoe UI Semibold for title and suffix, Segoe UI regular for tag and summary, and
  Segoe UI Bold for the version: no fallback font. `Art/preview-qa.json` records geometry, actual
  fonts, file size and contrast results.
- Contrasts were measured against `Art/preview-background.png`, a second render with lettering
  hidden, over every pixel in each text bounding rectangle (including all four corners). Minimum
  ratios: main title 9.46:1, Renew 6.76:1, tag 6.43:1, summary 5.72:1, badge digits 6.19:1.
  All exceed 4.5:1. The badge is tested against its opaque accent fill.
- Visually inspected final render and `Art/preview-268.png`: title, reduced suffix and version
  remain identifiable, rule visible, secondary and accent distinct, no clipped or overlapping text.
  Summary is intended for full-size viewing, as specified by the guide. Preview and composition
  were committed and pushed to `origin/main` in `b4ad969`; nothing was published to the Workshop.

### Functional and XML checks

- Manual functional scenarios A-I exist in `TESTING.md`: coat appearance, sequence end, rotations,
  save/reload persistence, adding/removing the mod, missing dependency, original-mod conflict and
  mod-list presentation. Their execution remains unverified; `tested_on` stays empty.
- `_tools/Check-Coats.ps1` ran successfully: 26 animals, 67 coats, 201 textures, no missing or
  orphan textures. It read 38 installed Megafauna 1.6 PawnKindDefs: all 26 targets exist and none
  already defines alternateGraphics. The dependency check was executed, not skipped.
- Added and ran `_tools/Check-Xml.ps1`: both shipped XML files parse; metadata, source URL,
  dependencies, incompatibility, 26 patch operations, per-operation success flags, XPath selection,
  probability bounds and 67 unique coat paths pass. A temporary regression fixture with one animal's
  success flag removed was correctly rejected.
- Scripts ran in PowerShell 7.6.5. Windows PowerShell was blocked by its execution policy; no policy
  was changed. Commands in `TESTING.md` now use `pwsh`.
- The former monorepo's four shared checkers are not included here and were not rerun. These local
  checks do not execute the game engine or revalidate its assembly types. In-game behavior remains
  to be tested. The manual title expectation now includes `(unofficial)`.

## What the fields say

`stage: done` in the repository's sense: the port work is finished. It does not mean tested, which
is what `tested_on` is for, and that field is empty because the mod has never run. It is detached
from the monorepo. Distribution visibility is justified above; GitHub's setting is recorded separately.
Nothing has gone to the Workshop: there is no
`About/PublishedFileId.txt`, so `workshop` stays empty.

`licence: silent` — no licence found in the specific sources checked above. This is not a blanket
claim about all possible sources or proof of abandonment. `ATTRIBUTION.md` records what was taken,
and `LICENSE` what the MIT grant does and does not cover.

`showcase: complete` — `About/Preview.png` and `About/ModIcon.png` both exist. The icon does not
resolve at 32 px, which is **known and kept** by the repository owner's decision rather than a
fault awaiting a fix. `TESTING.md` says so on the line where a tester would otherwise report it,
and that is why `remaining` carries no trace of it: listing a closed question reopens it at every
reading.

## What is left

Run the manual scenarios in RimWorld 1.6 and record the result. Scenarios A and B check coat
appearance and the end of the patch sequence; scenario D checks each animal's coat after reload.
The two repository-local automated scripts pass as recorded above; this is not an in-game pass.

`licence` vocabulary (legacy): `open` an explicit licence, `silent` no licence and a presumed inactive source
(for this mod, inactivity is evidenced by its update date; abandonment is unconfirmed),
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

---
settings_audit: not_applicable
workflow_audit: complete_through_writeTests
rights_audit: complete
audit_revision: 27fbee7 (audited 2026-10-16 against the current AUDIT.md, protocols 1397cf36..005d9b27 re-read: titles, pastilles, dormant[x.y.z]; no criterion changed)
audit_date: 2026-10-16
localization: not_applicable
translation_en: not_applicable
translation_fr: not_applicable
mod:          Colorful Coats - Megafauna! Renew (unofficial)
packageId:    nelim.colorfulcoats.megafauna
repo:         Rimworld-Colorful-Coats-Megafauna-Renew
remote:       https://github.com/vbardales/Rimworld-Colorful-Coats-Megafauna-Renew.git
local_folder: C:/Users/nelim/Documents/rimworld/ColorfulCoatsMegafaunaRenew
maintainer:   Claude Code, this repository's dedicated session
visibility:   public
visibility_reason: public silent source without declared 1.6 support or prohibition found; unofficial notice present
redistribution_permission: not found in sources checked 2026-09-12
source_maintenance: original declares 1.2, 1.3 and 1.4; abandoned under the project definition of no declared 1.6 support
github_visibility: public (technical setting checked 2026-09-13)
detached:     yes
workflow_stage: playTests[1.0.0]
licence:      silent
port_licence: MIT (port additions only; original assets excluded)
licence_at:   installed original files, live Steam description, all 15 item comments, public author profile (2026-09-12)
upstream_mod_remotes: N/A
dependencies: declared
showcase:     complete
tested_on:
automated_tests: passed, 2026-10-15, e57955d (Check-Coats.ps1; shared scripts/Check-Steps.ps1, 195 step lines resolve, 8 feature files)
xml_tests: passed, 2026-10-15, e57955d (Check-Xml.ps1)
manual_tests: nine scenarios in TEST_SCENARIOS.md, not executed by hand; Pickle covered A, B, D and H in game (initial tickets 2026-10-12, replays green), see docs/runs/
workshop: 3806766441 (prepublished 2026-09-28: item created, private; CHANGELOG 0.1.0 added)
remaining:
  - "2026-10-18: Audit (via TM) asked gallery prep polish: 08-gallery.feature now has dry tall grass at (201,148) and (201,156), Nelim carries WoodLog, scorpion coat-3 faces South (front view); no tattoo (own face rule), no weapon (calm story), no third-party mod needed; Check-Steps green; queued f70f (d3ba mammoths) predates this edit, relaunch mammoths; plants step never played, read capture"
  - "2026-10-19: mammoth gallery tickets d3ba, f70f, fe32, fd0f all exit 3 with no capture (startup hang, machine-wide, not the edit; TM cannot confirm a fix, NPT informed); evidence folders deleted (no report, nothing to prove); do not refile mammoths until NPT or Virginie confirms the hang is cleared; when refiled use -EvidenceDir Tests/Pickle/Inbox/<run>, judge capture at RUN_DONE; 08-gallery.feature gallery prep (dry tall grass, WoodLog, scorpion front view) unplayed; shotlist due at shootGallery (AUDIT 9.0)"

  - "2026-10-17: FRENCH_REVIEW.md (39cf697, no French string shipped) read and validated by Virginie; ChatGPT review of the French texts found nothing; gallery replay f70f (mammoths B and C, d3ba exit 3 had no capture) queued"
  - "2026-10-17: gallery 19db played green (4 of 4, Evidence/gallery-sanctuary-5, exit 0): opened by the session, no sweat, bun kept, coats plainly different; 4 candidates (palette PNG, 1.3 MB each) left in Art/Gallery, parked for shootGallery (not playTests); mammoths replayed with coats B and C, ticket d3ba (a804684) queued, owner asked for it 2026-10-17, judge the capture at RUN_DONE: session verdict accept 4, 3, 2, redo 1 (mammoth coats too close, force two with "is given coat"); Virginie decides then; drop candidate from names, reindex, subtitles via Art/Gallery-clean + scripts/Add-Subtitle.ps1; if sweat ever returns send the path to SB (local_9922b4f6) who relays to NPT"
  - "2026-10-17: coat sheet 09 (9ab1) read, no flipped or missing piece; echo_review_sha and social_preview_sha256 not due until mountPreview and writeDocs; no grep in any form (AGENTS.md)"
  - "2026-10-17: automated at af830bc (owner: no hand play): C by 10-all-coats and 11-all-textures (ticket 869f green 2026-10-17, 227 of 227, Evidence/all-coats-1), F by 12-removed-from-save as -Then/-ThenWithout (ticket 0c2e green 2026-10-17), E covered by every scenario; I (mod list entry, EN/FR look) and G are the game's own behaviour, not applicable (owner, 2026-10-17); About.xml checked offline"
  - "2026-10-10: defect: flaky off-thread spawn in CoatSteps (c9a2: Accessing map pawns off main thread, not at 5630), not this repository's code, reported to colorfulcoats.dodosrenew"
  - "2026-10-10: unverified: redistribution permission for the original assets"
code_review_sha: cc2703dd3e026665616b1d6fd4ca8f4cf23c20b9
session:      local_58f83149-f7e3-4f22-872a-edec4ef75a9b
updated: 2026-10-17, gallery replay 19db queued, echo-preview.png removed, protocols read at 7693bc9c
protocols_read_sha: b4c2c58a55479ef3e5fb3f98d333e541cb105462
---
# Colorful Coats - Megafauna! Renew (unofficial): status

Current state only: front matter = source of truth, run lines in `docs/runs/`, history in git.
Check with `scripts/Check-Status.ps1 -Mod ColorfulCoatsMegafaunaRenew` (no ERROR).

## State

`playTests[1.0.0]`. Exit criteria of `writeTests` re-run 2026-10-10 at 0034011: `Check-Coats.ps1` (26 animals,
67 coats, 201 textures), `Check-Xml.ps1`, `shared scripts/Check-Steps.ps1 of the protocols repository` (55 scenarios across passes) all PASS.
Functional scenarios A-I in `TEST_SCENARIOS.md`. Pickle suites in `Tests/Pickle/`: minimal pass, and pass for the one declared incompatibility, purpleyam's original. Mod adds no setting, no player-facing text.

## Left for playTests

- Minimal pass and incompatibility pass played, green (2026-10-12 initial tickets, replays green). Gallery pass (`docs/runs/2026-10-15-gallery-sanctuary.txt`) judged at `shootGallery`, not here.
- By hand: C, E, F, I, EN/FR mod-list presentation (8.g, 8.k).
- Flaky `CoatSteps` spawn error: `docs/runs/2026-09-28-c9a2-minimal-rerun.txt`.
- Target version 1.0.0 (owner, 2026-10-16). `CHANGELOG.md` `[1.0.0]` (2026-09-05) is base; date it at release.
- `Mod/` changed after `0.1.0` send (About text, `ModIcon32.png`).
- Untracked, not mine to commit: `Art/Gallery/2-candidate-enhydriodon.png`, `Art/Gallery/3-candidate-scorpions.png`, `Art/echo-source.png`.

## Notes


- `ModIcon.png` regenerated by owner; at 32 px only central smiley reads. Kept; `Mod/About/ModIcon32.png` ships.
- `Art/ModIcon.ico` = local folder icon from `scripts/Set-ModFolderIcons.ps1`, not shipped.
- Preview inputs: `Art/Preview.config.json`, `Art/Preview-source.png`, `Art/echo-preview.png`, `Art/ModIcon-source.png`.
- Upstream: purpleyam's original has no git repository (nothing to PR to). Megafauna (juanosarg/Megafauna) is dependency.
- Licence: original coats, chances, textures carry no declared licence (`silent`); port additions MIT (`LICENSE`).

## Audit record, 2026-10-10 (39cf697 working tree, protocols read at AUDIT.md/PUBLISHING.md current)

- Dependencies (4.g): `Spino.Megafauna` (1055485938), only one, hard (`modDependencies`) and `loadAfter`; checked against
  its 1.6 Defs by `scripts/Check-Coats.ps1` (26 targets). No optional integration, DLC, Harmony, assembly, or
  `LoadFolders.xml`, `supportedVersions` 1.6. `incompatibleWith`: purpleyam's original. `ANIMALS.md` integrations do not
  apply: mod adds no animal, only coats on Megafauna's.
- Settings audit (5.g): `not_applicable`. Behaviour = fixed cosmetic expansion (26 chances, 67 `texPath`); no Mod
  subclass, settings page, MainButtonDef in tree, so no empty page or shortcut exposed. No integration tested.
- Translation audit (6.h): all three fields `not_applicable`. Patch adds only probabilities, texture paths, XPath
  selectors, success flags; no label, description, key. `FRENCH_REVIEW.md` generated (ships no French, says so);
  `Check-DefInjected.ps1` not applicable. Nothing for Virginie to review.
- Tests (7.b to 7.d): `Check-Coats.ps1`, `Check-Xml.ps1`, `shared scripts/Check-Steps.ps1 of the protocols repository` green at 39cf697. Pass
  declaration in `TEST_SCENARIOS.md`. Pickle suites written, not run at this revision.

## Code review, 2026-10-13 (b1e4e2a..cc2703d, no Source/)

Read: `Mod/Patches/ColorfulCoats_Megafauna.xml` (26 operations, 26 distinct defNames, 67 texPaths, chances 0.6 x16, 0.7 x7, 0.8 x3, all inside
0.6 to 0.8 description states), `Mod/About/About.xml` (packageId, hard dependency, loadAfter, incompatibleWith, supportedVersions), and
`scripts/Check-Coats.ps1`, `scripts/Check-Xml.ps1`. No defect. Residual risk, already recorded: every operation carries `<success>Always</success>`, so renamed Megafauna animal loses coats silently; `Check-Coats.ps1` (check 3) and Pickle 01 scenarios are guard. `<author>` field still says
"1.6 adapted by Nelim" (no-version rule covers descriptions, not this field). Coat-per-id behaviour in saves (E, F) still unseen in game.

## Audit record, 2026-10-15

Replayed 1 to 7 against protocols changed since 9a33932f (AGENTS, AUDIT, CICD, GALLERY, README, scripts.md, LOCAL_SCRIPTS, STYLE_RIMWORLD, USE_THIS_INSTEAD). `Check-Status` 0 error, 0 warning.
`Check-Coats`, `Check-Xml`, shared `Check-Steps` green at HEAD. `Mod/` unchanged since `code_review_sha` (cc2703d), so 8.m stands. Local scripts: both rows validated
(2026-10-11), `Inventory-LocalScripts -Check` clean. ModIcon.png 41 KB: under 100 KB guard (2.c). Art holds no `Gallery-clean/` yet (no subtitle posed; due at `writeDocs`).
Not due yet: `echo_review_sha` (`prepareRelease`), `social_preview_sha256` (`writeDocs`). Echo still provisional `echo-preview.png`: finished gallery invalidates it at `mountPreview`.
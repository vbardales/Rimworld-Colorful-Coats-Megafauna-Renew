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
workflow_stage: shootGallery[1.0.0]
licence:      silent
port_licence: MIT (port additions only; original assets excluded)
licence_at:   installed original files, live Steam description, all 15 item comments, public author profile (2026-09-12)
upstream_mod_remotes: N/A
dependencies: declared
showcase:     complete
tested_on: 4d14f04 (Mod/ unchanged since cc2703d except About/Preview.png; green Pickle minimal, incompat, all-coats 869f, removal 0c2e, 2026-10-12 to 2026-10-17)
automated_tests: passed, 2026-10-15, e57955d (Check-Coats.ps1; shared scripts/Check-Steps.ps1, 195 step lines resolve, 8 feature files)
xml_tests: passed, 2026-10-15, e57955d (Check-Xml.ps1)
manual_tests: nine scenarios in TEST_SCENARIOS.md, not executed by hand; Pickle covered A, B, D and H in game (initial tickets 2026-10-12, replays green), see docs/runs/
workshop: 3806766441 (prepublished 2026-09-28: item created, private; CHANGELOG 0.1.0 added)
remaining:
  - "2026-11-02 NPT relay via TM: Stool fixed in 2aa6f93 (`sits on the building \"Stool\" at (x, z)` now starts a Wait job facing the stool; vanilla 1.6 has no sitting pose, seated = standing on the seat cell), test ticket 65b3 green 2026-11-02 (TM relay); Ingest: after `forced into the job \"Ingest\"` add `When I wait 300..900 ticks`, Hay reachable and not forbidden, else send NPT the log line `[stage] ... job now <name>`. Apply to 08-gallery.feature (scenes 1 and 4) only after RUN_DONE of f67d and a green 65b3, then replay"
  - "2026-11-02 replay-audit --force: 7.b and 7.c closed (Check-Coats and Check-Xml restored under Tests/, validated by Audit, green), back to shootGallery; first open 9.a (scenes 2 and 3 to redo)"
  - "2026-11-06 f67d read (exit 0, 2 of 2): scene 2 est 3.5 refuse (dark and murky, otter lying faces East not South, Nelim hidden by the meat, face unreadable, daylily not readable as a plant); scene 3 est 3.5 refuse (wide not tight, Nelim small and far, expression unreadable, scorpions three hues ok). Hair changed to the ponytail (owner 2026-11-06), bun lines removed from 08-gallery.feature and RimImmortal replaced by rooboid.hdhair.continued in wsl-deps.gallery.map, so every scene replays: file one 4-scene ticket after applying Stool and Ingest steps (65b3 green) to scenes 1 and 4"
  - "2026-11-02 shootGallery: ticket 20261102-211811-905-f67d (scenes 2 and 3 only, 0ea330c, wsl-deps.gallery.map, Inbox gallery-keeper-2) queued: scene 2 reworked (two Plant_Daylily fully grown, lit TorchLamp, walker, lying at right third, frame (145,167)-(157,176)), scene 3 spacing (scorpions 4 to 5 cells apart, frame (192,146)-(206,158), Nelim forced to walk back). Keep tree frozen until RUN_DONE. At RUN_DONE read summary.json then junit.xml, open both captures, verdict next to est 4.5 and 4; NPT asked via TM (Stool sit and Hay Ingest not obtained in a631). Then accept or refuse, drop candidate from names, reindex, Art/Gallery-clean + Add-Subtitle.ps1, update Gallery subtitles table in PUBLICATION.md (lines still the old story), 9.c order justified. a631 verdicts: 1 mammoths 3.5 keep, 2 3 redo, 3 2.5 redo, 4 4 accept; candidates 1 and 4 replaced in Art/Gallery; only NSB colonists"
  - "2026-10-18: Audit (via TM) asked gallery prep polish (dry tall grass, WoodLog, scorpion front view, no tattoo, no weapon): played in a631 2026-11-02, read in the captures"
  - "2026-10-19: evidence sorted (Tests/Pickle/Evidence, 0.6 MB). p17-assetpack-ab-B-1017 (1.7 A/B pack pass) trimmed to one scenario, its per-animal proof deleted: tested_1_7 has no proof, replay the 1.7 pass after a green 1.6 playTests"
  - "2026-10-17: FRENCH_REVIEW.md (39cf697, no French string shipped) read and validated by Virginie; ChatGPT review of the French texts found nothing; gallery replay f70f (mammoths B and C, d3ba exit 3 had no capture) queued"
  - "2026-10-17: coat sheet 09 (9ab1) read, no flipped or missing piece; echo_review_sha and social_preview_sha256 not due until mountPreview and writeDocs; no grep in any form (AGENTS.md)"
  - "2026-10-17: automated at af830bc (owner: no hand play): C by 10-all-coats and 11-all-textures (ticket 869f green 2026-10-17, 227 of 227, Evidence/all-coats-1), F by 12-removed-from-save as -Then/-ThenWithout (ticket 0c2e green 2026-10-17), E covered by every scenario; I (mod list entry, EN/FR look) and G are the game's own behaviour, not applicable (owner, 2026-10-17); About.xml checked offline"
  - "2026-10-10: defect: flaky off-thread spawn in CoatSteps (c9a2: Accessing map pawns off main thread, not at 5630), not this repository's code, reported to colorfulcoats.dodosrenew"
  - "2026-10-10: unverified: redistribution permission for the original assets"
code_review_sha: 4d14f04c9f3f2d4bbbd92ad992610e1dbe271143
session:      local_3131dacd-09d8-4d4f-aa8e-c26defdb4e74
updated: 2026-11-06, Preview validated, tests converted, NSB synced, hair = ponytail (owner), f67d read: scenes 2 and 3 refused (3.5 each), full 4-scene replay to file
protocols_read_sha: 4e6d7b694f3ae899b26ec15b743228a30a7dd519
---
# Colorful Coats - Megafauna! Renew (unofficial): status

Current state only: front matter = source of truth, run lines in `docs/runs/`, history in git.
Check with `scripts/Check-Status.ps1 -Mod ColorfulCoatsMegafaunaRenew` (no ERROR).

## State

`shootGallery[1.0.0]` (from playTests, 2026-10-27). Exit criteria of `writeTests` re-run 2026-10-10 at 0034011: `Check-Coats.ps1` (26 animals,
67 coats, 201 textures), `Check-Xml.ps1`, `shared scripts/Check-Steps.ps1 of the protocols repository` (55 scenarios across passes) all PASS.
Functional scenarios A-I in `TEST_SCENARIOS.md`. Pickle suites in `Tests/Pickle/`: minimal pass, and pass for the one declared incompatibility, purpleyam's original. Mod adds no setting, no player-facing text.

## Left for playTests

- Minimal pass and incompatibility pass played, green (2026-10-12 initial tickets, replays green). Gallery pass (`docs/runs/2026-10-15-gallery-sanctuary.txt`) judged at `shootGallery`, not here.
- No manual test left (8.k): C, E, F automated, G and I not applicable (2026-10-17 line in remaining).
- 8.e (2026-10-27): the 12 feature files read whole at 4d14f04, no `@wip`; tags in use: `@requires`, `@minimal-only`, `@review`, `@gallery`, `@coatsheet`. Logs (8.i): `07-clean-load` plus `no errors were logged` in 10-all-coats (227 of 227, all-coats-1) and 12-removed-from-save; no UI text shipped.
- Code review 8.m (2026-10-27): diff cc2703d..4d14f04 of `Mod/` is `About/Preview.png` only, so reviewed as images only, no code change.
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
## Shotlist (2026-10-27, AUDIT 9.0; full lines in the header of `08-gallery.feature`)

Story: the keeper's evening walk, Nelim (NSB, only colonist) feeds and settles the herd; 18:00, 18:20, 18:40, 19:00, Clear then night. Director pass by Opus kept: new arc with varied plans (wide, medium, tight, medium-wide), forced jobs plus paused-tick gesture, lit TorchLamp so animals sit in light, grass dropped, smile on default scenes. Steps asked to NPT (eating or sitting pose, lighting the fire, mammoth Hay and Enhydriodon lying), answer pending; if NPT refuses the owner arbitrates. Only NSB colonists.

| # | plan | place, hour | a time | b decor | c living | d pawn | e action | f frame | g/j subject | est | risk |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | wide, opening | bare-clearing 18:00 | ok | TorchLamp, Hay | 2 mammoths, 1 eating | teal, ponytail, smile | hauls log mid-stride | (186,146)-(205,158) | 2 coats, herd arrives | 4.5 | Hay ingest never played |
| 2 | medium | water-garden bank 18:20 | ok | Meat_Muffalo | 3 Enhydriodon, 1 lying facing South | same, smile | hauls meat | (143,166)-(158,178) | 3 distinct hues | 4 | bank cells unseen |
| 3 | tight | bare-clearing 18:40 | ok | TorchLamp, meat | 3 scorpions, 1 facing South | same, wary | steps back after throw | (195,149)-(202,155) | black, orange, lilac | 4.5 | none |
| 4 | medium-wide, closing | bare-clearing 19:00 night | ok | Campfire, 2 TorchLamp | 3 Chalicotherium, 2 lying | same, smile | sits on a Stool by the fire | (187,147)-(204,157) | most coats of the set | 4 | Stool seat pose unplayed |

Self-score of the series: 4. NPT answered 2026-10-27: ground sit refused (vanilla draws none), Stool substitute accepted; fire stays pre-lit decor; mammoth Hay ingest and Enhydriodon lies-at never played, so a small ticket plays them first and the failure text goes to NPT. Every scenario is rewritten from this plan before any ticket.

Scene 2 rework (2026-10-27, rate 3, to apply to `08-gallery.feature` after RUN_DONE of ticket a631, the tree stays frozen until then): decor Plant_Daylily at (148,172) and (156,170) fully grown (foreground left), TorchLamp (147,168) lit (warm light on the bank at 18:20), Meat_Muffalo, the pond and bank of water-garden behind; coat-3 forced to walk to (151,175) toward the meat so nobody only stands; instant "just before the meat lands, the otters turn toward her"; lying Enhydriodon at the right third facing South; frame (145,167)-(157,176) at 90 percent (3 animals fill about a third of the width, readable at 268 px); light warm left, dusk. Re-score 4.5 (risk: bank cells and the daylily readability unseen). Prop reference: GALLERY-PROPS.md, Plant_Daylily reads at zoom 4 to 6 beside a creature.

## NSB

Synced 2026-11-06 (sync-nsb). NSB `Docs/` unchanged since the 2026-10-27 shotlist (no commit on `Docs/` since then). Places, shots and frames still match `SANCTUAIRE-LIEUX.md` (bare-clearing x 186-204, z 147-157; water-garden bank x 143-158, z 168-176, hole at (149,173)). No owner question open (hair: ponytail, owner 2026-11-06).

Places read: 2026-11-06. Tribe read: 2026-11-06 (Nelim only).

| Place | Shots | Changes made for the gallery | Last read |
|---|---|---|---|
| bare-clearing | 1, 3, 4 | floor bared, vanometric cell hidden, Campfire, TorchLamp x1 to x2, Hay and Meat_Muffalo | 2026-11-06 |
| water-garden (west bank) | 2 | two Plant_Daylily, lit TorchLamp, Meat_Muffalo | 2026-11-06 |

| Colonist | Shots | Outfit per shot (why) | Last read | Exceptions |
|---|---|---|---|---|
| Nelim | 1 to 4 | teal `Apparel_CollarShirt` (24,74,84) + `Apparel_Pants` (16,52,60), same in all four (outfits free; one colour for continuity of the walk); smile (MouthSmile + LidCheerful) on default scenes, normal in 3 (wary), override allowed by GALLERY.md | 2026-11-06 | none: hair is the roster canon `Roo_HD_Hair_Highpony` (ponytail). Owner 2026-11-06: "Ponytail", chosen over the bun, so no property is changed |

| Animal | Shots | Outfit | Last read | Exceptions |
|---|---|---|---|---|
| none from NSB (Megafauna animals are the subject, spawned as decor: mammoths, Enhydriodon, Pulmonoscorpius, Chalicotherium) | 1 to 4 | none | not opened (no NSB animal used) | none |

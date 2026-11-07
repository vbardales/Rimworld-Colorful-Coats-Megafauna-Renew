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
  - "2026-11-06 ideas from the NPT and NSB catalogues (sub-agent read, unverified, steps marked not played): keeper feeds an animal (forced job on an animal, VFEPD_HayBaleLarge as trough), animal follows Nelim (`{string} follows {string}`), kept asleep next to a standing animal, collar via `the animal {string} is dressed in {string} dyed {string}` (ask NPT if a Megafauna kind takes it), Chitchat bubble (not played), DR_StickLantern or TorchLamp for dawn light, NSB frame step lifts the zoom limit (root size 2 to 130). No pose freezing, no fence, water, bowl, pet, wave or kneel steps. Plan: use feeding in shot 8, follow in shot 6, collar one animal per shot after NPT answers. Protocol file to re-read then Mark-ProtocolsRead: docs/LOCAL-SCRIPTS-CUT-2026-11-06.md"
  - "2026-11-07 ticket 0624 read (gallery-keeper-12, 5 of 5 passed): all five captures accepted by the director, kept as clean originals in Art/Gallery-clean (1-mammoths 4, 2-enhydriodon 4.5, 3-scorpions 4, 4-chalicotherium 4.5, 8-calm-zone 4; estimates 4.5, 4.5, 4.5, 4.5, 4). Weak points: Nelim small and at the edge in 1 and 8 (hay hides her face in 8, hay not eaten), wary look in 3, murky water in 2. Shots 5 to 7 bodies not written (cells, coat indices to name); then reindex (8 becomes 5..8 order), burn subtitles, upload set. Old untracked Art/Gallery/2-, 3-, 4-candidate-*.png are superseded (not mine, left). Inbox keeps gallery-keeper-7 (Cloud) and gallery-keeper-4 (another mods poodles)"
  - "2026-11-07 NOW: ticket 9123 CANCELLED 2026-11-07, shotlist v4 written, all 8 shots refiled as ticket 20261107-182232-221-3790, Inbox gallery-keeper-15; keep Mod/ and the feature frozen until RUN_DONE (rate-gallery with the new rules of 2026-11-07: plan b and g weak on 3 to 8, captures 1 2 3 4 8 decoration 3.5 so REDO; rewrite shotlist v4 first, then refile). Was: queued (refile of 024b, which died exit 3 stall guard on low RAM, infra not map; Inbox gallery-keeper-15; shots 5 to 7, bodies written at f602a47 then coat indices fixed; d711 failed: coat index beyond the race alternate count, and NullReference on WoodLog near in rice-paddy, now placed with at; runner wsl, TM asks auto from now on; Inbox gallery-keeper-14). Keep Mod/ and the feature frozen until RUN_DONE. Then: summary.json, junit.xml, open 3 captures, verdict, convert to JPG in Art/Gallery-clean as 5-enclosure, 6-exhibition, 7-rice-paddy (8-calm-zone already there), update the feature header v3 to v3.4, burn subtitles (table in PUBLICATION.md is written, 8 lines), crops, rate-gallery. Cells of 5 to 7 are guesses from place centres: check on the capture. If WoodLog at fails in 7, drop the logs"
  - "2026-11-06 a062 (scenes 2 to 4, Inbox gallery-keeper-3) and 09cb (scene 1, gallery-keeper-5; 0f35 died on infra exit 6, tunnel port 27750) read, all four plays passed. Est vs read: 1 mammoths 2.5 refuse (Nelim absent from frame, third mammoth missing, coats alike); 2 otters 3 refuse (murky, Nelim cut at bottom edge, daylily small); 3 scorpions 3.5 (3 hues clear, Nelim tiny at top, crop to include her); 4 Chalicotherium 4 accept (3 coats, Nelim on Stool, fire). Next: fix scenes 1 and 2 in 08-gallery.feature, delete their old captures in the same commit (GALLERY.md), one small ticket, then rate-gallery and crop in Art/Gallery-clean. Inbox gallery-keeper-4 holds another mod's poodle/panda/bengal captures: check origin before prune"
  - "2026-11-02 replay-audit --force: 7.b and 7.c closed (Check-Coats and Check-Xml restored under Tests/, validated by Audit, green), back to shootGallery; first open 9.a (scenes 2 and 3 to redo)"
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
protocols_read_sha: fd1e6cb40431806204ab7cdf8cebebc09962ca5d
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
## NSB

Re-synced 2026-11-07 after 14:47 (diffs of NSB `docs/` since then read): new fact, the vanometric cell (205,152-153) is to be removed from the map at NPT fixture -j (Virginie 2026-11-07, "les mods qui en ont besoin la mettront eux-mêmes"); the fixture in use is still `Nelims-tribe`, so shots 1 to 3 keep the `vanometric cell ... is hidden` step (lines 33, 124, 169 of `08-gallery.feature`, not in ticket 9123); when -j arrives, check that the step does not fail on an absent cell, else drop it (not changed now: scenarios frozen, cosmetic). `infirmary-animals`, infirmary and free zones validated: none used here. Other NSB changes (Ottawa, Ursule, Wrille views, decor lots) not used. Earlier pass: Synced 2026-11-07 (after the TM WARN `nsb-sync`). NSB `Docs/` changed since the 2026-11-06 pass: `NELIM-PROFIL.md` (1.7 body hair only; hair canon `Roo_HD_Hair_Highpony` and outfits unchanged), `SANCTUAIRE-LIEUX.md` (play-area frame only, not a place used here), `VALIDE.md` and `AVANCEMENT.md` (side and back views of Ottawa, Ursule, Wrille, not used here). `NSB-ROSTER.md`, `APPARENCES-CANON.md`, `CATALOGUE-ANIMAUX.md`, `LOOKS-VALIDATION.md` unchanged. Nothing to update in shotlist or scenarios. Rules in force (owner, 2026-11-05): NSB places, colonists, domestic animals free; outside NSB needs express validation; a colonist's properties change only with express validation; every outfit free; rule 5 (2026-11-06): every included animal has a shot. Fauna of the save not named by NSB is decor, free (`SANCTUAIRE-LIEUX.md`, "Qui une galerie peut utiliser"); the Megafauna creatures are not NSB animals, so decor. No owner question open (rule 5 settled by the owner, "c'est toi qui voit, réalisatrice", 2026-11-06).

Places read: 2026-11-07. Tribe read: 2026-11-07 (Nelim only; `NELIM-PROFIL.md` re-read in full; `CATALOGUE-ANIMAUX.md` has no Megafauna animal).

| Place | Shots | Changes made to it for the gallery | Last read |
|---|---|---|---|
| bare-clearing | 1, 3, 4 | floor bared, vanometric cell hidden, Campfire, TorchLamp x2, Hay, WoodLog, Meat_Muffalo | 2026-11-06 |
| water-garden (west bank) | 2 | Plant_Daylily x4, 3 lit TorchLamp, Meat_Muffalo; avoid (149,173) and (150,173) | 2026-11-06 |
| enclosure-north (x144-187, z224-245) | 5 (06:30) | TorchLamp lit (159,239), Hay x13; scenario written 2026-11-07, ticket d711 | 2026-11-07 (name and cells only) |
| exhibition-zone (shooting zone, left free) | 6 (07:30) | Plant_Daylily x3, Hay x5; scenario written 2026-11-07, carpet edge cell guessed, ticket d711 | 2026-11-07 (name and cells only) |
| rice-paddy (right rice zone, brown ground, forest edge) | 7 (08:30) | WoodLog x2, Meat_Muffalo x3; scenario written 2026-11-07, cells guessed from the place centre, ticket d711 | 2026-11-07 (name and cells only) |
| calm-zone (cream square, shooting zone left free) | 8 (09:30) | none planned (2 unlit TorchLamp, Plant_Daylily x3); decor docs not opened | 2026-11-06 (name only) |

| Colonist | Shots | Outfit per shot (why) | Last read | Exceptions |
|---|---|---|---|---|
| Nelim | 1 to 8 | teal `Apparel_CollarShirt` (24,74,84) + `Apparel_Pants` (16,52,60), same in all shots (outfits free; one colour for continuity of the walk, the morning count is the next day of the same tour, outfit kept on purpose); smile, normal in 3 (wary); hair = roster canon `Roo_HD_Hair_Highpony` | 2026-11-07 | none |

| Animal | Shots | Outfit | Last read | Exceptions |
|---|---|---|---|---|
| no NSB animal (the subject animals are Megafauna creatures spawned as decor) | 1 to 8 | none | catalogue 2026-11-07 (none of ours) | none |

### Included animals (rule 5)

26 patched Megafauna `PawnKindDef` (67 coats), from `ColorfulCoats_Megafauna.xml`. Shots 5 to 8 draw one coat per animal, chosen for contrast (the other coats are not drawn: 67 coats cannot read at 268 px).

| Animal | Shot |
|---|---|
| WoollyMammoth | 1 (3 coats) |
| Enhydriodon | 2 (3 coats) |
| Pulmonoscorpius | 3 (3 coats) |
| Chalicotherium | 4 (3 coats) |
| Deinotherium, Platybelodon, Uintatherium, Macrauchenia, Castoroides, Josephoartigasia | 5 |
| Paraceratherium, Gomphotaria, Diprotodon, Doedicurus, Procoptodon, Daeodon | 6 |
| Andrewsarchus, Smilodon, Megalania, Purussaurus, Titanis | 7 |
| Elasmotherium, Zygolophodon, Sivatherium, Dinocrocuta, Arthropleura | 8 |

No row MISSING. Scenarios of 1 to 8 written for shotlist v4 (2026-11-07).

## Shotlist v4 (2026-11-07; full lines in the header of `08-gallery.feature`, drift check OK)

Why v4: rate-gallery of v3.4 under the 2026-11-07 rules (decor sparse = weak b, story readable in the image = g, four capture notes at 4 or more). Plan b weak on 3 to 8, g weak on 5 to 8 (mean 4.3). Captures 1 2 3 4 8 opened: image 4 to 4.5, adequacy 3 to 4.5, understanding 2.5 to 4.5, decoration 3.5 each, all REDO, deleted (`git rm` in the same commit). Opus director pass kept: Ingest job running in every shot, woodpile 4 then 9 logs (time passes), no decor on the cell south of a pawn, hay not under a body, shot 8 shows the end of the meal (last hay eaten, Nelim seated), brazier or torch in every frame, sculpture and bonsai dropped except pond and calm zone, smile in every shot. Refused: 4 grazers in shot 6 (rule 5 needs all 6), 20-cell crops for the morning shots (24x13.5 at 80 px per cell is the native 1920x1080).

Story: evening round 18h to 19h, next morning breakfast round 06h30 to 09h30; Nelim same outfit, smile.

| # | place and hour | decor (b) | living (c, e) | Nelim (d) | says (g) | est |
|---|---|---|---|---|---|---|
| 1 | bare-clearing 18h, wide | Campfire, TorchLamp, Brazier, woodpile 4, Stool, Hay scatter, 4 Daylily | 3 mammoths, one eats, one walks South (front) | hauls logs mid-stride | She brings wood to the fire. | 5 |
| 2 | water-garden 18h20 | 3 TorchLamp, Brazier, bonsai, Stool, 4 Daylily, 8 meat | 3 otters, 2 eat, 1 lies | carries meat, faces South | She feeds the otters. | 5 |
| 3 | bare-clearing 18h40 | fire, TorchLamp, Brazier, woodpile 9, Hay, 4 Daylily, meat | 3 scorpions eat | hauls meat, 60 ticks | She feeds the scorpions. | 5 |
| 4 | bare-clearing 19h | fire, 2 TorchLamp, Brazier, Stool, woodpile 9, Hay, 4 Daylily | 3 Chalicotherium, one eats, 2 lie | sits on Stool | She sits by the fire while the herd settles. | 5 |
| 5 | enclosure-north 06h | TorchLamp, Brazier, 6 hay piles, WoodLog, Stool, 4 Daylily | 6 browsers, 2 eat, 1 walks | hauls hay | Breakfast for the great browsers. | 5 |
| 6 | exhibition-zone 07h | Brazier, Stool, 3 hay piles, 4 Daylily | 6 grazers, 2 eat | hauls hay | Breakfast for the strange grazers. | 5 |
| 7 | rice-paddy 08h | Brazier, 3 WoodLog, 3 meat piles, 3 Daylily | 5 predators, 2 eat, 1 walks | hauls meat | Breakfast for the hunters. | 5 |
| 8 | calm-zone 09h, closing | Brazier, 2 TorchLamp, Stool, bonsai, 3 Daylily, 3 hay | 5 animals, one eats the last hay | sits on Stool, South | Breakfast is over; the herd rests around her. | 5 |

Plan 5 on every shot (all criteria written, instant per shot), k ok (opening 1, variety wide 1 and medium, closing 8). Risks, to read on the captures: mammoth coats read alike at 268 px (coat indices -1, 1, 2), cells of 5 to 8 guessed from place centres, woodpile haul source in shot 1, crowded frame in 6 and 7, Brazier placement near animals. Verdict of v3.4 captures (REDO) is the gap this list learns from.

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
workflow_stage: writeReleaseDocs[1.0.0]
licence:      silent
port_licence: MIT (port additions only; original assets excluded)
licence_at:   installed original files, live Steam description, all 15 item comments, public author profile (2026-09-12)
upstream_mod_remotes: N/A
dependencies: declared
workshop_required_items: n/a, not released yet (item 3806766441 private, 0.1.0 prepublication only; hard dependency Spino.Megafauna 1055485938 to be set by hand on the Steam page at the end of writeReleaseDocs, AUDIT 4.g)
showcase:     complete
tested_on: 4d14f04 (Mod/ unchanged since cc2703d except About/Preview.png; green Pickle minimal, incompat, all-coats 869f, removal 0c2e, 2026-10-12 to 2026-10-17)
automated_tests: passed, 2026-10-15, e57955d (Check-Coats.ps1; shared scripts/Check-Steps.ps1, 195 step lines resolve, 8 feature files)
xml_tests: passed, 2026-10-15, e57955d (Check-Xml.ps1)
manual_tests: nine scenarios in TEST_SCENARIOS.md, not executed by hand; Pickle covered A, B, D and H in game (initial tickets 2026-10-12, replays green), see docs/runs/
workshop: 3806766441 (prepublished 2026-09-28: item created, private; CHANGELOG 0.1.0 added)
remaining:
  - "2026-11-17 TM missions list items 0-39 read. DONE at writeReleaseDocs: 1.0.0 Steam note rewritten as BBCode in PUBLICATION.md (item 39; Check-Status no steam-note WARN), ATTRIBUTION.md section Gallery set added (12 mods, gallery-credits INFO gone; 7 authors left as see Workshop page, not recorded in the catalogues). prepare-release 2026-11-17: Art/ and root clean (.claude/ is git-ignored), no ModIcon or supportedVersions change, gallery done, PUBLICATION checked, "1.6" removed from README and PUBLICATION reader-facing text (kept: supportedVersions, the author line format mandated by PUBLISHING.md, technical lines), em dashes removed from ATTRIBUTION, CHANGELOG, TESTING, translation_fr not_applicable (no string shipped) so no new /review-translation, but README, PUBLICATION and CHANGELOG changed after the earlier review rounds by wording only (version words, dashes), Check-Status 0 error 0 warning. compress-docs 12.c bis DONE 2026-11-17 (TESTING.md, Tests/Pickle/README.md, STATUS.md below Notes; identifiers, fences and table rows checked intact; Docs/runs and untracked PROMPT skipped; no release tag so no unchanged-skip). TO DO: read the dry-run Steam note and say so here before publish. Protocols root pull blocked by other sessions local edits (scripts/Tests/run-pickle-wsl.test.sh, scripts/docker/remote_known_hosts), not touched; origin not ahead. Items 36d not applied (held by TM)"
  - "Older entries (2026-11-15 and before) in docs/runs/2026-11-17-status-journal.txt"
  - "2026-11-17 VIRGINIE 'je valide' the Preview (Art/Preview-source.png new from the finished gallery, panelBare true, icon.corner bottom-left, palette re-detected: veil #5F371B, inkSecondary #EEB887, accent #F2A01C; config changes told to her). 10.a echo kept (echo-source.png, validated, echo_review_sha written), 10.b config ok, 10.c rendered 896x504 707960 bytes, 0-preview identical, desktop.ini present at root and in Mod/, 10.d contrast measured on the rendered pixels around the text (background about #61361A): primary 8.6, secondary 5.7, badge digits 8.7, all at or above 4.5; title, rule, 1.6 badge and echo readable at 896 and at 268 px. 10.f DONE 2026-11-17: Preview.png uploaded in GitHub Settings, Social preview, through Chrome on Virginie order, still shown after a reload, sha256 recorded (og:image tag not read). 10.e DONE 2026-11-17: Virginie said delete, Art/colorful-coats-megafauna-renew-key-art.png removed (untracked, never committed). OPEN before 10.g: WARN npt-sync; INFO gallery-credits (third-party mods of the gallery not credited, writeReleaseDocs); TM missions list not read"
  - "2026-11-17 VIRGINIE: 'je valide' on the whole gallery (1 to 8, subtitle 8 now `Breakfast is over. The herd rests around Nelim.`). All eight accepted, names final, indexes 1 to 8 contiguous in Art/Gallery and Art/Gallery-clean, 0-preview present. Gallery table: PUBLICATION.md (Gallery, Gallery subtitles). Stage moves to mountPreview[1.0.0]. First work there: redo the echo from the finished gallery (Art/echo-preview.png provisional is invalidated, echo_review_sha empty), then Preview via Render-Preview.cjs and the 0-preview copy. Open: TM missions list tm-missions-2026-11-12.md items 0-39 not yet read"
  - "2026-11-17 RUN_DONE 4466 (gallery-keeper-39, 3 of 3 passed) read: PNGs copied out first, Player.log 6 x `graphic record OK`, 0 NOT BUILT (trousers drawn, Nelim seen from the top, no bare skin). 3 candidate: south scorpion body ends y 925, clear of the subtitle band (y 977 to 1043), no overlap. 5 candidate: Uintatherium no longer touches the Deinotherium; Nelim half hidden by its head as before (face and hay readable), capybara ends y 960, a Brazier sits under the band (decor). 6 candidate: crop 1600x1080 at x 0 (void and orange edge gone), no animal near the right edge, none in the bottom 12 percent, Doedicurus nose touches Nelim's hay (risk, not an overlap of two animals). Clean JPG in Art/Gallery-clean, subtitled in Art/Gallery (3-scorpions, 5-enclosure, 6-exhibition, final names), Inbox run deleted, the three sent to Virginie 2026-11-17, awaiting her verdict per image. 1, 2, 4, 7, 8 OK since 2026-11-15. Keep Mod/ and the feature frozen until her verdict"
  - "2026-11-16 RUN_DONE b699 (gallery-keeper-37-1, shot 3 passed) and 0662 (gallery-keeper-38, shot 5 passed, shot 6 FAILED 'the cell (198, 170) is not standable': my v5.1 put Diprotodon on the Brazier cell) read, PNGs copied to the scratchpad first. Both passed captures are REDO: 3 coat-3 (the scorpion facing North, bottom of frame) body y 830 to 1030 sits under the subtitle band (Virginie's earlier fix moved coat-2, the wrong scorpion); 5 Uintatherium (forced Ingest on (154, 216)) walks onto the Deinotherium, bodies overlap (Nelim readable, face and hay visible, kept). v5.2 fixes: 3 coat-3 (199, 148) to (199, 149), its Meat_Muffalo (199, 149) to (199, 150); 5 coat-3 forced Ingest dropped, it only stands (153, 219); 6 coat-2 stands (197, 168) (was (198, 170)). Legs: Player.log [render-nodes] lists Apparel_Pants Legs on both runs, Nelim seen from the top in 3 and 5, no bare skin. Inbox runs deleted, no Art file to remove (3, 5, 6 had no capture in Art). Check-ShotlistVsScenario and Check-Steps green. Refiled 3, 5, 6 as one ticket (Inbox gallery-keeper-39). At RUN_DONE: copy PNGs first, check legs, no animal in the bottom 12 percent (band y 977 to 1043), no overlap, no animal near the right map edge in 6, convert to Art/Gallery-clean under final names, subtitle (lines in PUBLICATION.md), send 3, 5, 6 together. Shots 1, 2, 4, 7, 8 stay OK (Virginie 2026-11-15)"
  - "2026-11-15 VIRGINIE verdict on the v5.1 set: 1, 2, 4, 7, 8 OK; 3 and 5 an animal sits under the subtitle (3 not a KO); 5 also two animals overlap; 6 animals cut at the map edge. Fixes: 5 crop (147, 211) to (147, 210) so the south row clears the subtitle band (frame one row taller), Platybelodon coat-2 stands (158, 217) and walks to (158, 219) (was (157, 217) and (155, 219), overlapped Uintatherium and Deinotherium); 6 map edge read at about x 203.5 on the 1620 px crop, so all six animals pulled west: Paraceratherium (201, 164), Diprotodon (198, 170), Doedicurus (201, 168), Daeodon (197, 164), Daylily (201, 171) (Gomphotaria (192, 163) and Procoptodon (191, 170) unchanged). Header and scenarios agree (Check-ShotlistVsScenario OK). Old 5 and 6 files deleted (git rm). Refiled 5 and 6 as one ticket, 3 is ticket b699. At RUN_DONE: copy PNGs first, check legs, no animal in the bottom 12 percent, no overlap, no animal near the right map edge (no crop needed if the void is out of frame), convert, subtitle, send the three images together"
  - "2026-10-10: defect: flaky off-thread spawn in CoatSteps (c9a2: Accessing map pawns off main thread, not at 5630), not this repository's code, reported to colorfulcoats.dodosrenew"
  - "2026-10-10: unverified: redistribution permission for the original assets"
code_review_sha: 4d14f04c9f3f2d4bbbd92ad992610e1dbe271143
echo_review_sha: 1413c50fa3d6bb63de43c776f108d15ac8c558a3
social_preview_sha256: 9420de29c82572a7d8614bdc20c983dd42a92c4560d46dcfa04384445403af64
session:      local_3131dacd-09d8-4d4f-aa8e-c26defdb4e74
updated: 2026-11-17, mountPreview done (10.a to 10.f), now writeReleaseDocs; TM missions read
protocols_read_sha: a4e06962cb93706e34b442ce9c018f43d1e3c2dd
---
# Colorful Coats - Megafauna! Renew (unofficial): status

Current state only: front matter = source of truth, run lines in `docs/runs/`, history in git.
Check with `scripts/Check-Status.ps1 -Mod ColorfulCoatsMegafaunaRenew` (no ERROR).

## State

`writeReleaseDocs[1.0.0]` (from mountPreview, 2026-11-17; gallery validated, Preview validated and uploaded as the GitHub social preview, Steam 1.0.0 note in BBCode, Gallery set credited, closing pass and compress-docs done; open: dry-run note read, publish steps). Earlier: playTests 2026-10-27. Exit criteria of `writeTests` re-run 2026-10-10 at 0034011: `Check-Coats.ps1` (26 animals,
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

## Notes

- `ModIcon.png` regenerated by owner; 32 px only central smiley reads. Kept; `Mod/About/ModIcon32.png` ships.
- `Art/ModIcon.ico` = local folder icon from `scripts/Set-ModFolderIcons.ps1`, not shipped.
- Preview inputs: `Art/Preview.config.json`, `Art/Preview-source.png`, `Art/echo-preview.png`, `Art/ModIcon-source.png`.
- Upstream: purpleyam original no git repo (nothing to PR). Megafauna (juanosarg/Megafauna) = dependency.
- Licence: original coats, chances, textures no declared licence (`silent`); port additions MIT (`LICENSE`).

## Audit record, 2026-10-10 (39cf697 working tree, protocols read at AUDIT.md/PUBLISHING.md current)

- Dependencies (4.g): `Spino.Megafauna` (1055485938), only one, hard (`modDependencies`) + `loadAfter`; checked vs its 1.6 Defs by `scripts/Check-Coats.ps1` (26 targets). No optional integration, DLC, Harmony, assembly, `LoadFolders.xml`; `supportedVersions` 1.6. `incompatibleWith`: purpleyam original. `ANIMALS.md` integrations N/A: mod adds no animal, only coats on Megafauna's.
- Settings audit (5.g): `not_applicable`. Behaviour = fixed cosmetic expansion (26 chances, 67 `texPath`); no Mod subclass, settings page, MainButtonDef in tree → no empty page/shortcut exposed. No integration tested.
- Translation audit (6.h): all three fields `not_applicable`. Patch adds only probabilities, texture paths, XPath selectors, success flags; no label/description/key. `FRENCH_REVIEW.md` generated (ships no French, says so); `Check-DefInjected.ps1` N/A. Nothing for Virginie.
- Tests (7.b–7.d): `Check-Coats.ps1`, `Check-Xml.ps1`, `shared scripts/Check-Steps.ps1 of the protocols repository` green at 39cf697. Pass declaration in `TEST_SCENARIOS.md`. Pickle suites written, not run this revision.

## Code review, 2026-10-13 (b1e4e2a..cc2703d, no Source/)

Read: `Mod/Patches/ColorfulCoats_Megafauna.xml` (26 ops, 26 distinct defNames, 67 texPaths, chances 0.6 x16, 0.7 x7, 0.8 x3, all within description's 0.6–0.8), `Mod/About/About.xml` (packageId, hard dependency, loadAfter, incompatibleWith, supportedVersions), `scripts/Check-Coats.ps1`, `scripts/Check-Xml.ps1`. No defect. Residual risk, recorded: every op has `<success>Always</success>` → renamed Megafauna animal loses coats silently; guard = `Check-Coats.ps1` (check 3) + Pickle 01 scenarios. `<author>` still "1.6 adapted by Nelim" (no-version rule covers descriptions, not this field). Coat-per-id in saves (E, F) not yet seen in game.

## Audit record, 2026-10-15

Replayed 1–7 vs protocols changed since 9a33932f (AGENTS, AUDIT, CICD, GALLERY, README, scripts.md, LOCAL_SCRIPTS, STYLE_RIMWORLD, USE_THIS_INSTEAD). `Check-Status` 0 error, 0 warning. `Check-Coats`, `Check-Xml`, shared `Check-Steps` green at HEAD. `Mod/` unchanged since `code_review_sha` (cc2703d) → 8.m stands. Local scripts: both rows validated (2026-10-11), `Inventory-LocalScripts -Check` clean. ModIcon.png 41 KB < 100 KB guard (2.c). Art has no `Gallery-clean/` yet (no subtitle posed; due at `writeDocs`). Not due: `echo_review_sha` (`prepareRelease`), `social_preview_sha256` (`writeDocs`). Echo still provisional `echo-preview.png`: finished gallery invalidates at `mountPreview`.
## Ecosystem

Read by PiI on Steam Workshop (Chrome), 2026-11-13; full file `docs/inventory/ecosystem-steam/ColorfulCoatsMegafaunaRenew.md` of protocols repo. Original 2560113727, packageId `purpleyam.colorfulcoats.spinomegafauna`, versions 1.2 1.3 1.4, dead for 1.6. No duplicate/fork; corpus scan of package id finds only original, this Renew (3806766441), No Version Warning (link). No other Steam mod recolours Megafauna. Dependency Megafauna 1055485938 (Spino, 1.3–1.6) alive; translations 3437247298 (zh), 3533761373 (ru); dead 2017 patch 1097287517; neighbour Mythic Ages: Megafauna Bestiary 3537788184. Patch-only, no defName scan. Nothing subscribed.

## NSB

Earlier re-sync passes (2026-11-07 to 2026-11-13) moved to `docs/runs/2026-11-17-status-journal.txt`. Rules in force (owner, 2026-11-05): NSB places, colonists, domestic animals free; outside NSB needs express validation; colonist properties change only with express validation; every outfit free; rule 5: every included animal has shot. Megafauna creatures not NSB animals → decor. No owner question open.

Places read: 2026-11-17 (git log NSB docs since 2026-11-13: 18 commits, none on places docs; bare-clearing, water-garden, enclosure-south, exhibition-zone, rice-paddy, calm-zone unchanged). Tribe read: 2026-11-17 (log only: VALIDE.md Soren and others, VTW-BODYTYPES, NEUTRES-TETE, TESTING; NELIM-PROFIL, ROSTER, APPARENCES-CANON, CATALOGUE-ANIMAUX, LOOKS-VALIDATION untouched since 2026-11-13; Nelim already validated, nothing to change). Steps read: 2026-11-17 (NPT log since 2026-11-14: Beauty2 mouth DY step, blueprint FinishFrame and gizmo hover, filth spread, aim pose, node hide, Entertaining Ideas catalogue; none used). Earlier: Places read: 2026-11-13 (git log diffs; places unchanged since 2026-11-09 read; diffs of `SANCTUAIRE-LIEUX.md` and `VALIDE.md` since 2026-11-07; places not re-read whole). Tribe read: 2026-11-13 (log only: Quill only since 2026-11-09, no Nelim change; earlier 2026-11-09 diff of `NSB-ROSTER.md`: Quill only; Nelim profile unchanged since 2026-11-07 read). Steps read: 2026-11-14 (NPT log since 2026-11-13: aim pose step, node hide, vehicle spawn, Entertaining Ideas catalogue; none used, NSB unchanged; earlier: log + stat of NPT steps since 2026-11-09, steps.md moved to Docs/; earlier 2026-11-09 diffs of NPT `docs/steps.md` since 2026-11-06; catalogues unchanged). Earlier: Places read: 2026-11-07. Tribe read: 2026-11-07 (Nelim only; `NELIM-PROFIL.md` re-read full; `CATALOGUE-ANIMAUX.md` no Megafauna animal).

| Place | Shots | Changes made to it for the gallery | Last read |
|---|---|---|---|
| bare-clearing | 1, 3, 4 | floor bared, vanometric cell hidden, Campfire, TorchLamp x2, Hay, WoodLog, Meat_Muffalo | 2026-11-06 |
| water-garden (west bank) | 2 | Plant_Daylily x4, 3 lit TorchLamp, Meat_Muffalo; avoid (149,173), (150,173) | 2026-11-06 |
| enclosure-north (x144-187, z224-245) | 5 (06:30) | TorchLamp lit (159,239), Hay x13; scenario written 2026-11-07, ticket d711 | 2026-11-07 (name, cells only) |
| exhibition-zone (shooting zone, left free) | 6 (07:30) | Plant_Daylily x3, Hay x5; scenario written 2026-11-07, carpet edge cell guessed, ticket d711 | 2026-11-07 (name, cells only) |
| rice-paddy (right rice zone, brown ground, forest edge) | 7 (08:30) | WoodLog x2, Meat_Muffalo x3; scenario written 2026-11-07, cells guessed from place centre, ticket d711 | 2026-11-07 (name, cells only) |
| calm-zone (cream square, shooting zone left free) | 8 (09:30) | none planned (2 unlit TorchLamp, Plant_Daylily x3); decor docs not opened | 2026-11-06 (name only) |

| Colonist | Shots | Outfit per shot (why) | Last read | Exceptions |
|---|---|---|---|---|
| Nelim | 1 to 8 | teal `Apparel_CollarShirt` (24,74,84) + `Apparel_Pants` (16,52,60), same all shots (outfits free; one colour for walk continuity, morning count = next day of same tour, outfit kept on purpose); smile, normal in 3 (wary); hair = roster canon `Roo_HD_Hair_Highpony` (set by step in every scenario since v5, 2026-11-13; trousers before shirt) | 2026-11-13 (hair, trousers lines) | none |

| Animal | Shots | Outfit | Last read | Exceptions |
|---|---|---|---|---|
| no NSB animal (subject animals = Megafauna creatures spawned as decor) | 1 to 8 | none | catalogue 2026-11-07 (none ours) | none |

### Included animals (rule 5)

26 patched Megafauna `PawnKindDef` (67 coats), from `ColorfulCoats_Megafauna.xml`. Shots 5–8 draw one coat per animal, chosen for contrast (other coats not drawn: 67 coats unreadable at 268 px).

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

No row MISSING. Scenarios 1–8 written for shotlist v4 (2026-11-07).

## Shotlist v4 (2026-11-07; full lines in the header of `08-gallery.feature`, drift check OK)

Why v4: rate-gallery of v3.4 under 2026-11-07 rules (sparse decor = weak b, story readable in image = g, four capture notes ≥4). Plan b weak on 3–8, g weak on 5–8 (mean 4.3). Captures 1 2 3 4 8 opened: image 4–4.5, adequacy 3–4.5, understanding 2.5–4.5, decoration 3.5 each, all REDO, deleted (`git rm` same commit). Opus director pass kept: Ingest job running every shot, woodpile 4 then 9 logs (time passes), no decor on cell south of pawn, hay not under body, shot 8 shows meal end (last hay eaten, Nelim seated), brazier or torch every frame, sculpture and bonsai dropped except pond and calm zone, smile every shot. Refused: 4 grazers in shot 6 (rule 5 needs all 6), 20-cell crops for morning shots (24x13.5 at 80 px/cell = native 1920x1080).

Story: evening round 18h–19h, next morning breakfast round 06h30–09h30; Nelim same outfit, smile.

| # | place and hour | decor (b) | living (c, e) | Nelim (d) | says (g) | est |
|---|---|---|---|---|---|---|
| 1 | bare-clearing 18h, wide | Campfire, TorchLamp, Brazier, woodpile 4, Stool, Hay scatter, 4 Daylily | 3 mammoths, one eats, one walks South (front) | hauls logs mid-stride | Nelim brings wood to the fire. | 5 |
| 2 | water-garden 18h20 | 3 TorchLamp, Brazier, bonsai, Stool, 4 Daylily, 8 meat | 3 otters, 2 eat, 1 lies | carries meat, faces South | Nelim feeds the otters. | 5 |
| 3 | bare-clearing 18h40 | fire, TorchLamp, Brazier, woodpile 9, Hay, 4 Daylily, meat | 3 scorpions eat | hauls meat, 60 ticks | Nelim feeds the scorpions. | 5 |
| 4 | bare-clearing 19h | fire, 2 TorchLamp, Brazier, Stool, woodpile 9, Hay, 4 Daylily | 3 Chalicotherium, one eats, 2 lie | sits on Stool | Nelim sits by the fire while the herd settles. | 5 |
| 5 | enclosure-north 06h | TorchLamp, Brazier, 6 hay piles, WoodLog, Stool, 4 Daylily | 6 browsers, 2 eat, 1 walks | hauls hay | Breakfast for the great browsers. | 5 |
| 6 | exhibition-zone 07h | Brazier, Stool, 3 hay piles, 4 Daylily | 6 grazers, 2 eat | hauls hay | Breakfast for the strange grazers. | 5 |
| 7 | rice-paddy 08h | Brazier, 3 WoodLog, 3 meat piles, 3 Daylily | 5 predators, 2 eat, 1 walks | hauls meat | Breakfast for the hunters. | 5 |
| 8 | calm-zone 09h, closing | Brazier, 2 TorchLamp, Stool, bonsai, 3 Daylily, 3 hay | 5 animals, one eats the last hay | sits on Stool, South | Breakfast is over. The herd rests around Nelim. | 5 |

Plan 5 every shot (all criteria written, instant per shot), k ok (opening 1, variety wide 1 + medium, closing 8). Risks, check on captures: mammoth coats read alike at 268 px (coat indices -1, 1, 2), cells of 5–8 guessed from place centres, woodpile haul source shot 1, crowded frame 6 and 7, Brazier placement near animals. v3.4 captures verdict (REDO) = gap this list learns from.

### v4.1 (2026-11-07, after RUN_DONE 319c and 5eee)

Shots 1, 4, 8 read, accepted (4, 4.5, 4.5). Shots 3, 6, 7 recomposed (full lines in feature header, drift check OK): 3 one Meat_Muffalo stack of 3 per scorpion (bodies no longer converge), Nelim 3 cells away; 6 moved 10 cells West onto grass, crop (190, 162) to (205, 172), no carpet edge, no dark void squares (cells guessed from first capture, grass x 200–209: read on capture); 7 crop (224, 116) to (238, 126), three meat stacks on bare ground, Daylily (225, 125) added, Nelim at (226, 122). Plan stays 5 on mechanical criteria (b decor ≥3 named objects in frame, g story readable: she hauls to animals that eat); gap v4 plan 5 vs capture ≤3.5 on 3, 6, 7 = lesson: frame and crowding judged on capture, not plan. Risk: cells of 6 and 7 guessed.
---
settings_audit: not_applicable
workflow_audit: partial
rights_audit: partial
audit_revision: 8bea896ca32fb21ad53fd444db6d1370b60ea021
audit_date: 2026-09-13
localization: not_applicable
translation_en: not_applicable
translation_fr: not_applicable
mod:          Colorful Coats - Megafauna! Renew (unofficial)
packageId:    nelim.colorfulcoats.megafaunarenew
repo:         Rimworld-Colorful-Coats-Megafauna-Renew
remote:       https://github.com/vbardales/Rimworld-Colorful-Coats-Megafauna-Renew.git
local_folder: C:/Users/nelim/Documents/rimworld/ColorfulCoatsMegafaunaRenew
maintainer:   Codex, this repository's dedicated task
visibility:   public
visibility_reason: historical public silent classification retained provisionally; abandonment premise unverified; see correction follow-up
redistribution_permission: not found in sources checked 2026-09-12
source_maintenance: last update 2022-10-26; abandonment not explicitly confirmed
github_visibility: public (technical setting checked 2026-09-13)
detached:     yes
stage:        dansMonoRepo
licence:      silent
port_licence: MIT (port additions only; original assets excluded)
licence_at:   installed original files, live Steam description, all 15 item comments, public author profile (2026-09-12)
dependencies: declared
showcase:     complete
tested_on:
automated_tests: passed, 2026-09-13, PowerShell 7.6.5
xml_tests: passed, 2026-09-13, Check-Xml.ps1
manual_tests: nine scenarios documented in TESTING.md, not executed
workshop:
remaining:
  - unverified: source abandonment required by the publishing silent classification is not established
  - unverified: execute scenarios A-I, inspect logs and presentation in English and French, including new game and existing save
  - unverified: no coat has ever been seen to appear in game
  - unverified: redistribution permission for original assets not established
session:      local_aa123338-053f-4ea8-a01d-068bdd74a18c
updated:      2026-09-13, held by the mod's own thread
---

# Colorful Coats - Megafauna! Renew (unofficial) — status

Read by a sweep across every mod, rather than by asking each thread in turn. It lives at the
root, never inside `Mod/`, so Steam never receives it. Dropped here by the sweep of 2026-09-12 and
held since by this mod's thread, which updates it in the commit that changes what it describes.

## Correction follow-up — 2026-09-13

This follow-up and the front matter are the current result; the ordered audit below
records the pre-correction findings and is preserved as history.

Corrected all three documented defects: README and both ATTRIBUTION copies now describe
the bounded source audit without asserting abandonment; README and About explicitly say
in-game tests are unexecuted; About ends with the required Steam-formatted source link.
The explanatory scope notes in both LICENSE copies were aligned without changing the MIT
grant or extending it to third-party material. Existing-save compatibility is now described
as unverified. Attribution identifies Spino's underlying artwork and the permission limit.
TESTING.md now gives explicit new-game/existing-save and EN/FR setup, and avoids treating
a random sample as proof of a specific failure cause. CHANGELOG records these corrections.

Validation on HEAD `8bea896ca32fb21ad53fd444db6d1370b60ea021` plus the local changes in
README.md, ATTRIBUTION.md, LICENSE, Mod/ATTRIBUTION.md, Mod/LICENSE, Mod/About/About.xml,
TESTING.md, CHANGELOG.md and STATUS.md:

- `pwsh -NoProfile -File _tools/Check-Coats.ps1`: PASS, including installed Megafauna
  targets; 26 animals, 67 coats, 201 textures, no missing or orphan textures.
- `pwsh -NoProfile -File _tools/Check-Xml.ps1`: PASS for both delivered XML files.
- Parsed About.description and checked its trimmed ending against the exact expected
  `[url=...]Source code on GitHub[/url]` link: PASS.
- SHA-256 equality of each root/distribution LICENSE and ATTRIBUTION pair: PASS.
- `git diff --check`: PASS. Patch, images, identifiers, dependency declarations and
  scripts are unchanged. Settings/localization non-applicability and prior image checks
  remain valid; no new in-game text was introduced.

**Stage remains dansMonoRepo**, solely because the abandonment premise for the historical
public/silent classification is still unverified. The documentary contradictions themselves
are fixed. Establishing that premise, or another supported classification basis, remains
the next gate; this edit does not invent evidence or infer active maintenance/prohibition.
No remote visibility change, publication, author contact or game test was performed.
All independently validated later gates are retained, including the now-corrected English
description. Final in-game testing remains pending separately. Existing local STATUS edits
and historical results were preserved; no commit or push was made.

## Ordered workflow audit — 2026-09-13 (before corrections)

At the time of this audit, this section superseded historical stage conclusions below, which
are preserved as evidence. Applied the user's ordered workflow, with its explicit
precedence over `../PUBLISHING.md`, `../STYLE_RIMWORLD.md`, `../MOD_SETTINGS.md` and
`../TRANSLATIONS.md`; all four documents and `../AGENTS.md` were read.

**Previous stage: done. Retained stage: dansMonoRepo.** This is the literal initial
workflow state (no abbreviated code), meaning the first cumulative gate is incomplete.
It does NOT mean the repository physically belongs to a monorepo: `detached: yes`
remains verified. No repository move, remote removal or visibility change is required
by this finding. The chain used here is:
`dansMonoRepo -> horsMonoRepo -> ModIcon generated -> Preview generated -> preOptions
-> options -> l10n -> preTest -> done -> tested`.

### Scope and reproducibility

- Autonomous Git root: `C:/Users/nelim/Documents/rimworld/ColorfulCoatsMegafaunaRenew`;
  `.git` is its own directory, `git rev-parse --show-superproject-working-tree` is empty.
  Distribution root: `Mod/`, tree object `2ca246143f45a989996b438570f2c45600307f00`.
- Audited HEAD: `8bea896ca32fb21ad53fd444db6d1370b60ea021`. At entry only `STATUS.md`
  was modified (the translation audit and its fields); those edits were preserved.
  This audit edits only STATUS.md. No build, image generation, game launch, commit,
  push or publication was performed. Delivered files and test scripts match HEAD.
- `git remote -v`, `git ls-remote origin refs/heads/main` and `gh repo view ...
  --json name,isPrivate,url`: GitHub exists, is public, and main equals audited HEAD.
  Initial sandbox network/config access failed; the read-only retry with expanded
  permissions succeeded. There is no outstanding GitHub-access uncertainty.
- Recursive distribution inventory: two XML files, 203 PNGs (201 animal textures,
  two About images), LICENSE and ATTRIBUTION.md. No C#, assembly, project, Defs,
  Languages, LoadFolders or version-specific directory in this mod.
- `pwsh -NoProfile -File _tools/Check-Coats.ps1`: PASS; 26 animals, 67 coats,
  201 textures, no missing/orphan texture; 38 installed Megafauna 1.6 PawnKindDefs
  read, all 26 targets present, none already has alternateGraphics. Dependency
  checking was actually executed, not skipped.
- `pwsh -NoProfile -File _tools/Check-Xml.ps1`: PASS; both XML files parsed,
  metadata, 26 operations, XPath fixtures, success flags, probabilities and 67
  unique coat paths checked. Runtime: PowerShell 7.6.5. Scripts were also read;
  they are static tests, not execution of RimWorld's patch engine.
- LICENSE and Mod/LICENSE hashes match; ATTRIBUTION.md and Mod/ATTRIBUTION.md
  hashes match. MIT scope explicitly excludes original coats/chances/textures;
  no third-party licence is invented. These copies share the documentation issue below.

### Ordered transition results

| Transition | Result and evidence |
| --- | --- |
| dansMonoRepo -> horsMonoRepo | **Incomplete: documented inconsistency and unverified premise.** Repository, pushed commit, identifiers, English documentation and scoped licence files pass. However README calls the original abandoned and both ATTRIBUTION copies call it dead, while the preserved source audit explicitly says abandonment was not established. PUBLISHING defines silent using abandonment; the public/silent rationale is therefore not fully established and consistent. This is not proof that the original is alive or that redistribution is prohibited. |
| horsMonoRepo -> ModIcon generated | **Independent checks validated.** No unfinished implementation identified in the delivered patch. Build/compiled-artifact freshness is not applicable to XML and textures. ModIcon directly decoded/viewed: PNG, 128 x 128, 44,146 bytes. The documented owner decision to retain its crowded composition is preserved. The 20-30 KB guidance is not a hard blocker. |
| ModIcon generated -> Preview generated | **Independent checks validated.** Delivered PNG directly viewed: 896 x 504, 682,412 bytes, below 1 MB. Also viewed Art/preview-268.png. Mammoth coats remain identifiable; no concrete camera defect, clipping or overlap found. No historical generation report or side-by-side game screenshot is required. |
| Preview generated -> preOptions | **Visual/naming checks validated; publishing-description defect.** Orange-rust accent is distinct from pale ochre secondary ink at both sizes; Renew is reduced, unofficial is on its own line, no linking word requires reduction. About description is English. It does not end with the required `[url=...]Source code on GitHub[/url]`: its bare source URL occurs before credits/adoption text. The description also implies in-game testing without supporting execution results. |
| preOptions -> options | **Not applicable, justified; gate passes independently.** See settings inventory below. No in-game evidence is required for this no-settings case under the user's precedence rule. |
| options -> l10n | **Not applicable, justified; gate passes independently.** Rechecked every patch leaf: 26 alternateGraphicChance, 67 texPath, 26 xpath and 27 success values. Only internal paths, probabilities, selectors and flags are added. No owned display text, translation keys, parameters or DefInjected targets. Metadata is outside this gate; dependency animal text is not modified. |
| l10n -> preTest | **Independent checks validated.** Sole required mod is installed Spino.Megafauna, declaring 1.6, matching modDependencies and loadAfter. All targets checked against its 1.6 Defs. Original package is incompatibleWith. No Harmony, DLC, custom classes, optional integration or conditional load folder is used here; no extra version constraint is evidenced as necessary. |
| preTest -> done | **Independent offline checks validated.** TESTING.md contains A-I scenarios with common load-order setup, actions and expected outcomes. Both meaningful automated/XML scripts executed successfully on the delivered revision. Compiled-code tests are not applicable. This certifies offline readiness only, subject to earlier gates; it does not substantiate the README's in-game-testing claim. |
| done -> tested | **Not verified.** No scenarios were executed in game during this audit and historical records explicitly leave them unexecuted. Actual coat appearance/rotations, persistence, adding/removing on an existing save, dependency/conflict behavior, logs and EN/FR mod-list presentation remain to be checked. New-game setup must be recorded alongside the existing-save cases. Settings and shortcut runtime tests are not applicable. |

### Settings audit

The complete behavior inventory is a fixed cosmetic expansion: original per-species
chances (0.6-0.8), lists of alternate texture paths and patch success flags. These are
content definitions, not a documented user configuration or a hidden XML-only settings
interface. There is no demonstrated need to expose every coat/chance as a control for
this faithful port; enabling/disabling the cosmetic pack already selects its scope.
No inherited configuration or optional configuration integration is referenced.
The full source/distribution inventory and patch structure show no Mod subclass,
settings page, MainButtonDef or shortcut: no empty page or shortcut is exposed.
Thus `settings_audit: not_applicable` is justified by behavior and source inspection,
not merely by absence of an assembly. Input validation, saved settings, application
timing, reset/migration and RIMMSQOL integration tests are not applicable. No integration
was tested or certified. Animal-coat save persistence remains a separate game test.

### Required next work and limits

For the **next transition only**, reconcile README and both ATTRIBUTION copies with
the qualified source findings, and establish/document the premise supporting the
chosen rights classification and visibility under PUBLISHING. Explicit permission
would be one possible basis, not an extra universal requirement for silent mods.
The absence of permission alone does not trigger this downgrade. No legal prohibition,
active maintenance or author abandonment is inferred here; the 2026-09-12 source audit
is historical evidence and its live Steam investigation was not repeated today.

For later gates, fix the description's final formatted source link and reconcile its
and README's in-game-testing wording with the actual unexecuted scenarios. Then run
the final in-game suite and record the game/dependency versions, language, save setup,
observations and logs. Missing execution is an unverified check, not a gameplay defect.

Optional only: the nine scenarios could use more uniform explicit setup headings;
the probabilistic coat checks should describe an all-original sample as a failure to
observe the feature, not definitive proof of one particular cause. No new feature,
new image or automatic licence/visibility change is requested by this audit.

## Translation audit — 2026-09-13 (historical; independently rechecked above)

Applied the new gate in `../PUBLISHING.md` and `../TRANSLATIONS.md` to the working
tree based on revision `8bea896ca32fb21ad53fd444db6d1370b60ea021`. All three translation
fields are `not_applicable`: the inventory proves this mod adds or changes no in-game text.

- Inspected the complete published tree with `Get-ChildItem Mod -Recurse -File`:
  two XML files, 203 PNGs (201 animal textures and two About images), `LICENSE` and
  `ATTRIBUTION.md`. There is no assembly, source code, Defs directory, language resource,
  LoadFolders file, version-specific content or optional integration to audit separately.
- Parsed every leaf element of `Mod/Patches/ColorfulCoats_Megafauna.xml` using
  `SelectNodes('//*[not(*)]')`: 26 `alternateGraphicChance` values, 67 `texPath` values,
  26 `xpath` selectors and 27 `success` flags. Read the patch structure and ran
  `pwsh -NoProfile -File _tools/Check-Xml.ps1`: PASS for both XML files, all 26 operations
  and all 67 coats. Each operation only adds `alternateGraphicChance` and
  `alternateGraphics`; each coat only contains `texPath`.
- These values are probabilities, internal paths, selectors and patch control flags.
  No labels, descriptions, UI strings, generated text, translation keys or DefInjected
  targets are introduced or replaced. Animal names and descriptions remain owned by
  Megafauna; this mod reuses no translation keys and does not certify its dependency's
  English or French coverage.
- `Mod/About/About.xml`, the title embedded in the preview, licences and documentation
  are publishing metadata/material outside the in-game translation gate. The About
  description remains English as required by the publishing workflow.

No English or French resources need to be added, and `Check-DefInjected.ps1` is not
applicable because there are no injection paths. No translation-specific runtime checks
remain: there is no owned text to exercise in either language. No in-game test was run;
the existing functional scenarios remain unverified. The historical `stage: done` is
preserved. Repeat this inventory after patch changes, and reset affected fields to
`unchecked` if text, Defs, UI code or language resources are added or changed.

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

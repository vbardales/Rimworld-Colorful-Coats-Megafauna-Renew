# In-game scenarios, run by Pickle

Companion mod **Colorful Coats - Megafauna! Renew - Pickle tests** (`Mod/`), never published. Features only, no assembly: every step Pickle's own or PickleTools'. Lives outside `Mod/` → Steam never gets it.

## Scope, and what is not here

Gherkin kept because only running game answers: patch applied to each of 26 animals (sequence stopping at first failure hides this; every operation has `<success>Always</success>`), game's content holders serve texture sample and no other mod took path, animals generated in >1 coat, coat survives save+reload, load clean.
Anything a file can prove stays in shared checks (`Check-Textures`, `Check-PatchTargets`) and `Tests/Rule-OwnValues.ps1`: 201 textures, 26 defNames, no orphan file.

**Spawn and reload** (`03-`, `04-`, `05-`, `06-`) use `PickleTools/CoatSteps`, written by Dodos session, shared by four Colorful Coats ports. Steps compile, never run.

**All coats and textures** (`10-`, `11-`, 2026-10-17, not played): `10-all-coats` gives one animal each extra coat of each of 26 kinds, compares drawn graphic to listed `texPath`; `11-all-textures` asks content holders for all 201 files. **Removal from a save** (`12-`, not played): `-Filter '::coats are saved with the mod' -Then '::the save
loads without the mod' -ThenWithout nelim.colorfulcoats.megafauna`, a sequence, never alone. Adding mod to save (E) has no own test: every scenario loads mod into colony that never had it (`WELCOME.md`).

**Not written, on purpose:** G, mod with no Megafauna. That's game's reaction to missing hard dependency; `AUDIT.md` says not ours to test: mod answers for what it declares, `modDependencies` checked in sources. I, mod list entry, is a screen look, not a scenario.

## Pass matrix

| Pass | Map | Status |
|---|---|---|
| Minimal | `wsl-deps.sans-facultatifs.map` | played 2026-10-12 (initial ticket 48/55 green, 4 reds were gallery, since moved to own pass), replays green |
| Gallery (Sanctuary, @gallery, @coatsheet) | `wsl-deps.gallery.map` | played 2026-10-14 12:07 (4/4) and 2026-10-15 09:41 (gallery 1 and 4, 2/2, after animals turned to fire); captures to judge |
| Optional integration | none: no optional integration; Megafauna, only dependency, is hard | not applicable |
| Declared incompatibility `purpleyam.colorfulcoats.spinomegafauna` (Workshop 2560113727) | `wsl-deps.incompat-spinomegafauna.map` | played 2026-10-12, replay green (30/30, filter 01 and 06, `!@minimal-only`) |
| DLC absent | none: no DLC referenced | not applicable |
| English and French | none: mod owns no in-game text (`STATUS.md`) | not applicable |

`06-original-alongside.feature` skipped by its `@requires` tag in minimal pass — original not staged there. Skip ≠ pass: incompatibility pass plays it.

## Offline check

Shared `scripts/Check-Steps.ps1` (protocols repo) compiles every feature step phrase against steps Pickle and staged tools really declare, checks pass maps, no game. Found two undefined steps here before any run (missing `Nelim's Pickle Tools: ` prefix). Features-only suite has no `Source` folder; shared script accepts that.

    powershell -NoProfile -ExecutionPolicy Bypass -File ../scripts/Check-Steps.ps1 -ModRoot .

## Run

Shared harness only, never by hand (`AUDIT.md`): deposit request with `Submit-PickleRun.ps1`, `-Mod ColorfulCoatsMegafaunaRenew -DepMap <map>`, commit SHA in `-Label`, tree untouched until `RUN_DONE`. Two requests, one per map.

## First-run questions the features cannot answer yet

- Nothing on `overrideGraphicIndex` anymore: decompiling 1.6 shows coat derived on demand by `PawnGraphicUtils.TryGetAlternate`; field not the mechanism. Shared `CoatSteps` read it when suite written; Dodos session (owner) told, suite waits for fix.
- Whether `test-colony` has room for 24–30 adult animals of large kind. Spawn step names how many not placed; count measures fixture, not mod.
- Whether Body render node carries animal graphic. Deterministic step "is drawn with that coat's own texture" reads path from `PawnRenderer.BodyGraphic`; node correctness decompiled, not seen — first run tells. Red there → suspect step before mod.
- Whether purpleyam's original logs own error on 1.6. `06-` asserts silent load; will be adjusted to name message if any, not loosened.

## Evidence to keep

Per pass, one run: `summary.md` and `junit.xml` (read `exitReason` first, then discovered vs played), plus `Player.log`. Keep `mammoth-coats` screenshot only if a person opens it and it plainly shows different animals. All under `Tests/Pickle/Evidence/<run>/` on disk, gitignored; history = one line per run in `docs/runs/`. Delete report once newer one for same revision replaces it.
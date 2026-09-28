# In-game scenarios, run by Pickle

Companion mod **Colorful Coats - Megafauna! Renew - Pickle tests** (`Mod/`), never published. Features only,
no assembly: every step is Pickle's own or one of PickleTools'. Lives outside `Mod/`, so Steam never receives it.

## Scope, and what is not here

Kept in Gherkin because only a running game answers it: that the patch was applied to each of the 26 animals
(a sequence that stops at its first failure hides this, and every operation carries `<success>Always</success>`),
that the game's content holders serve a sample of the textures and no other mod took the path, that animals
are generated in more than one coat, that a coat survives a save and reload, and that the load is clean.
Everything a file can prove stays in `_tools/Check-Coats.ps1`: the 201 textures, the 26 defNames, no orphan file.

**Spawn and reload** (`03-`, `04-`, `05-`, `06-`) use `PickleTools/CoatSteps`, written by the Dodos session and
shared by the four Colorful Coats ports. Those steps compile but have never run.

**Not automatable here:** E and F (add or remove the mod in a save that already exists). They need two launches of
one save with different mod sets, and the harness stages one set per launch. They stay unverified, and the About and
README claim "safe to add or remove" stays a claim until someone plays them.

**Not written, on purpose:** G, the mod with no Megafauna at all. That is the game's reaction to a hard dependency
that is missing, which `AUDIT.md` says is not ours to test: the mod answers for what it declares, and
`modDependencies` is checked in the sources. I, the mod list entry, is a look at a screen, not a scenario.

## Pass matrix

| Pass | Map | Status |
|---|---|---|
| Minimal | `wsl-deps.sans-facultatifs.map` | written, not run |
| Optional integration | none: the mod has no optional integration and Megafauna, its only dependency, is a hard one | not applicable |
| Declared incompatibility `purpleyam.colorfulcoats.spinomegafauna` (Workshop 2560113727) | `wsl-deps.incompat-spinomegafauna.map` | written, not run |
| DLC absent | none: no DLC is referenced | not applicable |
| English and French | none: the mod owns no in-game text (`STATUS.md`) | not applicable |

`06-original-alongside.feature` is skipped by its `@requires` tag in the minimal pass, because the original is
not staged there. A skip is not a pass: the incompatibility pass is the one that plays it.

## Run

Through the shared harness only, never by hand (`AUDIT.md`): deposit the request with `Submit-PickleRun.ps1`,
`-Mod ColorfulCoatsMegafaunaRenew -DepMap <map>`, with the commit SHA in `-Label` and the tree left untouched until
`RUN_DONE`. Two requests, one per map.

## First-run questions the features cannot answer yet

- Whether `Pawn.overrideGraphicIndex` is set at spawn or at first draw. `CoatSteps` reads it after 30 frames.
- Whether `test-colony` has room for 24 to 30 adult animals of a large kind. The spawn step names how many could
  not be placed; that count measures the fixture, not the mod.
- Whether purpleyam's original logs an error of its own on 1.6. `06-` asserts a silent load and will be adjusted to
  name the message if there is one, not loosened.

## Evidence to keep

Per pass, one run: `summary.md` and `junit.xml` (read `exitReason` first, then discovered against played), and the
`Player.log`. Keep the `mammoth-coats` screenshot only if a person opens it and it shows plainly different animals.
Everything goes under `Tests/Pickle/Evidence/<run>/` on disk, gitignored; the history is one line per run in
`docs/runs/`. Delete a report as soon as a newer one for the same revision replaces it.

@requires:purpleyam.colorfulcoats.spinomegafauna
Feature: with purpleyam's original running too, the coats still appear and nothing is logged

  # TESTING.md scenario H. Only the incompatibility pass stages the original, so this feature is
  # skipped by its tag in the minimal pass, which is not a pass. <incompatibleWith> is the
  # protection; this asserts what happens when it does not hold. Neither mod declares a def: both
  # add an alternateGraphics element to the same PawnKindDef. Confirmed at e824ec2's incompat run,
  # correcting an earlier guess here: alternateGraphics is a List<T>, and two PatchOperationAdd do
  # not overwrite it, they both append - the mammoth's list grew from 3 entries to 6, not "the last
  # one wins". The scalar alternateGraphicChance field IS overwritten (0.7 held, purpleyam's own
  # patch runs first and this mod's runs after per loadAfter). The documented outcome is therefore
  # green and silent for whether coats still appear, not red: an expected failure would make the
  # suite unreadable. If the original's own load logs an error on 1.6 (it declares 1.4 and nothing
  # further), the first run shows it here and the feature is then adjusted to say so, with that
  # message named, rather than loosened.

  Background:
    Given the save "test-colony" is loaded

  Scenario: both mods are running
    Then mod "purpleyam.colorfulcoats.spinomegafauna" is loaded
    And mod "nelim.colorfulcoats.megafauna" is loaded

  Scenario: the animals still draw coats
    Given Nelim's Pickle Tools: 24 adult animals of kind "WoollyMammoth" are spawned
    Then Nelim's Pickle Tools: among the animals of kind "WoollyMammoth", at least 2 different extra coats were drawn
    And Nelim's Pickle Tools: each animal of kind "WoollyMammoth" that carries an extra coat is drawn with that coat's own texture
    And no errors were logged

  # The documented symptom, asserted rather than left to surface as an unexplained mismatch
  # elsewhere in the suite (01-patch-applied.feature guards against exactly this): the list is
  # cumulative across the two patches, purpleyam's 3 plus this mod's 3, and the chance this mod
  # declares is the one that wins, since it patches after purpleyam's per loadAfter.
  Scenario: WoollyMammoth carries both mods' coats
    Then Nelim's Pickle Tools: the pawn kind "WoollyMammoth" keeps 6 alternate graphics at a chance of "0.7"

@requires:purpleyam.colorfulcoats.spinomegafauna
Feature: with purpleyam's original running too, the coats still appear and nothing is logged

  # TESTING.md scenario H. Only the incompatibility pass stages the original, so this feature is
  # skipped by its tag in the minimal pass, which is not a pass. <incompatibleWith> is the
  # protection; this asserts what happens when it does not hold. Neither mod declares a def: both
  # add an alternateGraphics element to the same PawnKindDef, a field written twice is read twice,
  # and the last one wins. The documented outcome is therefore green and silent, not red: an
  # expected failure would make the suite unreadable. If the original's own load logs an error on
  # 1.6 (it declares 1.4 and nothing further), the first run shows it here and the feature is then
  # adjusted to say so, with that message named, rather than loosened.

  Background:
    Given the save "test-colony" is loaded

  Scenario: both mods are running
    Then mod "purpleyam.colorfulcoats.spinomegafauna" is loaded
    And mod "nelim.colorfulcoats.megafauna" is loaded

  Scenario: the animals still draw coats
    Given Nelim's Pickle Tools: 24 adult animals of kind "WoollyMammoth" are spawned
    Then Nelim's Pickle Tools: among the animals of kind "WoollyMammoth", at least 2 different extra coats were drawn
    And Nelim's Pickle Tools: every animal of kind "WoollyMammoth" has a coat within its kind's alternate graphics
    And no errors were logged

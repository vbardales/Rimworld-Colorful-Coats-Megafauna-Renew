@requires:nelim.pickletools.coatsteps
Feature: a mammoth keeps its own coat across a save and reload

  # TESTING.md scenario D. Pawn.overrideGraphicIndex is what records the coat and it goes into the
  # save. A coat that moved to another animal, or was drawn again, would reshuffle the herd on
  # every load. The index is read after 30 frames: whether it is set at spawn or at first draw is
  # not known, and the first run says.

  Background:
    Given the save "test-colony" is loaded

  Scenario: each mammoth has the coat it had before
    Given Nelim's Pickle Tools: 16 adult animals of kind "WoollyMammoth" are spawned
    Then Nelim's Pickle Tools: among the animals of kind "WoollyMammoth", at least 2 different extra coats were drawn
    When Nelim's Pickle Tools: I note the coats of the animals of kind "WoollyMammoth"
    And I save and reload
    Then Nelim's Pickle Tools: each animal of kind "WoollyMammoth" still has the coat noted for it
    And no errors were logged

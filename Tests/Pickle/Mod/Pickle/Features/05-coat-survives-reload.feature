@requires:nelim.pickletools.coatsteps
Feature: a mammoth keeps its own coat across a save and reload

  # TESTING.md scenario D. The coat is not stored: PawnGraphicUtils.TryGetAlternate derives it on
  # every draw from Rand seeded with thingIDNumber ^ 0xB415, then the chance and a weighted pick over
  # the kind's alternateGraphics. It survives a reload because the id is saved and the list is the
  # same, and this scenario is what would notice either changing. The coat must be read through
  # PawnGraphicUtils.GetGraphicIndex, not Pawn.overrideGraphicIndex, which the renderer ignores.

  Background:
    Given the save "test-colony" is loaded

  Scenario: each mammoth has the coat it had before
    Given Nelim's Pickle Tools: 16 adult animals of kind "WoollyMammoth" are spawned
    Then Nelim's Pickle Tools: among the animals of kind "WoollyMammoth", at least 2 different extra coats were drawn
    When Nelim's Pickle Tools: I note the coats of the animals of kind "WoollyMammoth"
    And I save and reload
    Then Nelim's Pickle Tools: each animal of kind "WoollyMammoth" still has the coat noted for it
    And no errors were logged

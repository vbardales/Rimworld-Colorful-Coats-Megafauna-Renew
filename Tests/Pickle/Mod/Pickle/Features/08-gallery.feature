@requires:nelim.pickletools.coatsteps
@requires:nelim.pickletools.colonistrace
@requires:nelim.pickletools.stagedecor
@requires:nelim.pickletools.camerazoom
@requires:nelim.pickletools.screenshotmode
Feature: Workshop gallery captures

  # Staged photographs for the Workshop page, never default scenes (rule of 2026-10-02). The story, the set, the keeper and
  # the order of the four images are in Tests/Pickle/gallery-draft.md. Not assertions: a person opens each image. Play them in the
  # MINIMAL pass only (-Filter '@gallery'): in the incompatibility pass purpleyam's original is staged and doubles the coat
  # list, which would falsify what the page shows.
  #
  # The set is built by the Background, so each image starts from the same bare ground, and taken down by StageDecor's own
  # AfterScenario. Open ground at (24, 24) to (38, 34) of test-colony (PickleTools/docs/FIXTURES.md: free squares near (30, 30)).
  # The coats are chosen, not left to chance: each animal is given a named coat (-1 is the original), so every image shows the\n  # variety it is meant to. That is staging. The 24-animal scenarios of 03-coats-on-spawn.feature are what prove that coats occur.

  Background:
    Given the save "test-colony" is loaded
    And I set the weather to "Clear"
    And I set the hour to 18
    And Nelim's Pickle Tools: I lay the floor "PackedDirt" from (24, 24) to (38, 34)
    And Nelim's Pickle Tools: I place the decor "Campfire" at (24, 29)
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (25, 25)
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (37, 25)
    And Nelim's Pickle Tools: I place the decor "PlantPot" at (26, 33)
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (36, 33)
    And Nelim's Pickle Tools: I place the decor "Shelf" at (30, 34)
    And Nelim's Pickle Tools: the decor "Campfire" at (24, 29) is lit
    And Nelim's Pickle Tools: the decor "TorchLamp" at (25, 25) is lit
    And Nelim's Pickle Tools: the decor "TorchLamp" at (37, 25) is lit
    And Nelim's Pickle Tools: a colonist "keeper" of kind "Colonist" exists
    And Nelim's Pickle Tools: "keeper" body type is Thin
    And Nelim's Pickle Tools: "keeper" hair colour is rgb (40, 32, 28)
    And Nelim's Pickle Tools: "keeper" wears "Apparel_CollarShirt" dyed rgb (24, 74, 84)
    And Nelim's Pickle Tools: "keeper" wears "Apparel_Pants" dyed rgb (16, 52, 60)
    And Nelim's Pickle Tools: "keeper" stands at (25, 31) facing East
    And Nelim's Pickle Tools: the other colonists are out of frame

  # Image 1: the most telling, not the prettiest. The animal everyone knows, and the one the original shows.
  @review @gallery
  Scenario: two mammoths in the lamplight
    Given Nelim's Pickle Tools: 2 adult animals of kind "WoollyMammoth" are spawned around (31, 29)
    And Nelim's Pickle Tools: the animal "coat-1" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 2
    When Nelim's Pickle Tools: developer mode is turned off for the capture
    And Nelim's Pickle Tools: I frame the cells (24, 24) to (38, 34) filling 80 percent of the screen
    And I take a screenshot "gallery-1-mammoths"

  # Image 2: the most generous small kind, four extra coats at 0.8. The point is the variety.
  @review @gallery
  Scenario: three Enhydriodon in the lamplight
    Given Nelim's Pickle Tools: 3 adult animals of kind "Enhydriodon" are spawned around (31, 29)
    And Nelim's Pickle Tools: the animal "coat-1" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 1
    And Nelim's Pickle Tools: the animal "coat-3" is given coat 3
    When Nelim's Pickle Tools: developer mode is turned off for the capture
    And Nelim's Pickle Tools: I frame the cells (24, 24) to (38, 34) filling 80 percent of the screen
    And I take a screenshot "gallery-2-enhydriodon"

  # Image 3: not a mammal, so the pack is not only mammals.
  @review @gallery
  Scenario: three giant scorpions in the lamplight
    Given Nelim's Pickle Tools: 3 adult animals of kind "Pulmonoscorpius" are spawned around (31, 29)
    And Nelim's Pickle Tools: the animal "coat-1" is given coat -1
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-3" is given coat 1
    When Nelim's Pickle Tools: developer mode is turned off for the capture
    And Nelim's Pickle Tools: I frame the cells (24, 24) to (38, 34) filling 80 percent of the screen
    And I take a screenshot "gallery-3-scorpions"

  # Image 4: the kind with the most coats, five extra.
  @review @gallery
  Scenario: two Chalicotherium in the lamplight
    Given Nelim's Pickle Tools: 2 adult animals of kind "Chalicotherium" are spawned around (31, 29)
    And Nelim's Pickle Tools: the animal "coat-1" is given coat 1
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 4
    When Nelim's Pickle Tools: developer mode is turned off for the capture
    And Nelim's Pickle Tools: I frame the cells (24, 24) to (38, 34) filling 80 percent of the screen
    And I take a screenshot "gallery-4-chalicotherium"

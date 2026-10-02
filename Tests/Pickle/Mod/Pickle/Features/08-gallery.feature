@requires:nelim.pickletools.coatsteps @requires:nelim.pickletools.screenshotmode
Feature: Workshop gallery captures

  # Captures for the Workshop page, not assertions: a person opens each image (AUDIT.md, "Captures destinees a la
  # publication"). The scene is built by the scenario on the test colony, with the interface left to the game's own
  # capture frame: developer mode off so the toolbar stays out of the shot, animals packed close together and framed.
  # Play them in the MINIMAL pass only (-Filter '@gallery'): in the incompatibility pass purpleyam's original is
  # staged and doubles the coat list, which would falsify what the page shows. Order and what each image must show are
  # in PUBLICATION.md (not written yet).
  #
  # Room is the limit, measured at 35a1ae9: the close-spawn step (radius fixed at four cells) placed 2 of 3 large\n  # animals and 3 of 8 small ones, so the counts below are what fits. No coat assertion: with 2 or 3 animals a\n  # chance of 0.6 to 0.8 shows no extra coat often enough to fail a capture for luck; the reviewer says so instead,\n  # and 03-coats-on-spawn.feature proves with 24 to 30 animals that coats occur. A fuller frame needs a radius\n  # parameter on the step, which is PickleTools' to add.

  Background:
    Given the save "test-colony" is loaded

  # Image 1: the headline. Mammoths are the animal everyone knows, and the original's own showcase.
  @review @gallery
  Scenario: two mammoths in two coats
    Given Nelim's Pickle Tools: 2 adult animals of kind "WoollyMammoth" are spawned close together
    When Nelim's Pickle Tools: developer mode is turned off for the capture
    And Nelim's Pickle Tools: I frame the animals of kind "WoollyMammoth"
    And I take a screenshot "gallery-1-mammoths"

  # Image 2: the most generous kind (4 extra coats at 0.8), small enough to pack a herd into the frame.
  @review @gallery
  Scenario: three Enhydriodon in many coats
    Given Nelim's Pickle Tools: 3 adult animals of kind "Enhydriodon" are spawned close together
    When Nelim's Pickle Tools: developer mode is turned off for the capture
    And Nelim's Pickle Tools: I frame the animals of kind "Enhydriodon"
    And I take a screenshot "gallery-2-enhydriodon"

  # Image 3: an insect, to show the pack is not only mammals.
  @review @gallery
  Scenario: three giant scorpions
    Given Nelim's Pickle Tools: 3 adult animals of kind "Pulmonoscorpius" are spawned close together
    When Nelim's Pickle Tools: developer mode is turned off for the capture
    And Nelim's Pickle Tools: I frame the animals of kind "Pulmonoscorpius"
    And I take a screenshot "gallery-3-scorpions"

  # Image 4: the other generous large kind (5 extra coats), kept at three for the same reason as the mammoths.
  @review @gallery
  Scenario: two Chalicotherium, the kind with the most coats
    Given Nelim's Pickle Tools: 2 adult animals of kind "Chalicotherium" are spawned close together
    When Nelim's Pickle Tools: developer mode is turned off for the capture
    And Nelim's Pickle Tools: I frame the animals of kind "Chalicotherium"
    And I take a screenshot "gallery-4-chalicotherium"

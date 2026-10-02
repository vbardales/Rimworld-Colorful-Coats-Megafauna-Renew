@requires:nelim.pickletools.coatsteps @requires:nelim.pickletools.screenshotmode
Feature: Workshop gallery captures

  # Captures for the Workshop page, not assertions: a person opens each image (AUDIT.md, "Captures destinees a la
  # publication"). The scene is built by the scenario on the test colony, with the interface left to the game's own
  # capture frame: developer mode off so the toolbar stays out of the shot, animals packed close together and framed.
  # Play them in the MINIMAL pass only (-Filter '@gallery'): in the incompatibility pass purpleyam's original is
  # staged and doubles the coat list, which would falsify what the page shows. Order and what each image must show are
  # in PUBLICATION.md (not written yet).
  #
  # Room is the limit: only about three mammoths fit within four cells of the map centre (run 5630). Large kinds
  # therefore stay at three, the smaller kinds carry the "many coats in one frame" shots. The mammoth has no coat
  # assertion on purpose: three animals at 0.7 show no extra coat about 3 times in 100, which would fail a capture
  # for luck, and the reviewer says so instead. The two small-kind scenarios assert two different coats first, so a
  # frame of identical animals is a red and not a pretty image nobody checks.

  Background:
    Given the save "test-colony" is loaded

  # Image 1: the headline. Mammoths are the animal everyone knows, and the original's own showcase.
  @review @gallery
  Scenario: three mammoths, three coats
    Given Nelim's Pickle Tools: 3 adult animals of kind "WoollyMammoth" are spawned close together
    When Nelim's Pickle Tools: developer mode is turned off for the capture
    And Nelim's Pickle Tools: I frame the animals of kind "WoollyMammoth"
    And I take a screenshot "gallery-1-mammoths"

  # Image 2: the most generous kind (4 extra coats at 0.8), small enough to pack a herd into the frame.
  @review @gallery
  Scenario: a herd of Enhydriodon in many coats
    Given Nelim's Pickle Tools: 8 adult animals of kind "Enhydriodon" are spawned close together
    Then Nelim's Pickle Tools: among the animals of kind "Enhydriodon", at least 2 different extra coats were drawn
    When Nelim's Pickle Tools: developer mode is turned off for the capture
    And Nelim's Pickle Tools: I frame the animals of kind "Enhydriodon"
    And I take a screenshot "gallery-2-enhydriodon"

  # Image 3: an insect, to show the pack is not only mammals.
  @review @gallery
  Scenario: a swarm of giant scorpions in two coats
    Given Nelim's Pickle Tools: 8 adult animals of kind "Pulmonoscorpius" are spawned close together
    Then Nelim's Pickle Tools: among the animals of kind "Pulmonoscorpius", at least 2 different extra coats were drawn
    When Nelim's Pickle Tools: developer mode is turned off for the capture
    And Nelim's Pickle Tools: I frame the animals of kind "Pulmonoscorpius"
    And I take a screenshot "gallery-3-scorpions"

  # Image 4: the other generous large kind (5 extra coats), kept at three for the same reason as the mammoths.
  @review @gallery
  Scenario: three Chalicotherium, the kind with the most coats
    Given Nelim's Pickle Tools: 3 adult animals of kind "Chalicotherium" are spawned close together
    When Nelim's Pickle Tools: developer mode is turned off for the capture
    And Nelim's Pickle Tools: I frame the animals of kind "Chalicotherium"
    And I take a screenshot "gallery-4-chalicotherium"

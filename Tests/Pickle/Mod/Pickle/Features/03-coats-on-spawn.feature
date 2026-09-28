@requires:nelim.pickletools.coatsteps
Feature: the animals are generated in more than one coat

  # TESTING.md scenario A. Each animal rolls once and the chance is the chance of getting ANY extra
  # coat, so each single coat is rarer than it. Two kinds of assertion, on purpose:
  #   - "different extra coats were drawn" is chance-based. The odds are worked out, and the failure
  #     message prints N, K and the coats seen, so a red from bad luck reads differently from a red
  #     from a broken patch:
  #       mammoth     0.7, 3 coats, 24 adults, 2 different:  fails by luck about one run in a million
  #       scorpion    0.6, 2 coats, 24 adults, 2 different:  about 4 in 10 000
  #       Enhydriodon 0.8, 4 coats, 30 adults, 3 different:  about 8 in a million
  #   - "is drawn with that coat's own texture" is deterministic. It compares the path of the graphic
  #     the renderer built for each animal with the texPath the def lists for the coat the game
  #     chose, so it has no probability in it and fails for exactly one reason: the coat the game
  #     picked is not the one it draws. It fails outright when no animal carries a coat.
  # Big animals need room: the step names how many of N could not be placed. That count is not a
  # failure of the mod, it is the fixture being too small, and the first run measures it.

  Background:
    Given the save "test-colony" is loaded

  Scenario: woolly mammoths show several coats
    Given Nelim's Pickle Tools: 24 adult animals of kind "WoollyMammoth" are spawned
    Then Nelim's Pickle Tools: among the animals of kind "WoollyMammoth", at least 2 different extra coats were drawn
    And Nelim's Pickle Tools: each animal of kind "WoollyMammoth" that carries an extra coat is drawn with that coat's own texture
    And no errors were logged

  Scenario: an insect kind shows several coats too
    Given Nelim's Pickle Tools: 24 adult animals of kind "Pulmonoscorpius" are spawned
    Then Nelim's Pickle Tools: among the animals of kind "Pulmonoscorpius", at least 2 different extra coats were drawn
    And Nelim's Pickle Tools: each animal of kind "Pulmonoscorpius" that carries an extra coat is drawn with that coat's own texture

  Scenario: the most generous kind shows most of its coats
    Given Nelim's Pickle Tools: 30 adult animals of kind "Enhydriodon" are spawned
    Then Nelim's Pickle Tools: among the animals of kind "Enhydriodon", at least 3 different extra coats were drawn
    And Nelim's Pickle Tools: each animal of kind "Enhydriodon" that carries an extra coat is drawn with that coat's own texture

  # Not an assertion: the capture is for a person to open. The animals are spawned close together and
  # the camera is framed on them, so the reviewer answers one question - are these plainly different
  # animals, not shades of one? - and, if they are out of frame, says so instead of passing it.
  @review
  Scenario: the coats are plainly different animals
    Given Nelim's Pickle Tools: 8 adult animals of kind "WoollyMammoth" are spawned close together
    Then Nelim's Pickle Tools: among the animals of kind "WoollyMammoth", at least 1 different extra coats were drawn
    When Nelim's Pickle Tools: I frame the animals of kind "WoollyMammoth"
    And I take a screenshot "mammoth-coats"

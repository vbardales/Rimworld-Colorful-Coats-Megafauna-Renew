@requires:nelim.pickletools.coatsteps
Feature: the first and the last animal in the patch both got coats

  # TESTING.md scenario B, the one the port exists for. If the first animal has coats and the last
  # does not, something between them stopped the sequence. Both roll 0.6 with two coats, so among
  # 20 adults the chance that none draws an extra coat is 0.4^20, about one in 90 billion.

  Background:
    Given the save "test-colony" is loaded

  Scenario: the first animal in the file, Andrewsarchus
    Given Nelim's Pickle Tools: 20 adult animals of kind "Andrewsarchus" are spawned
    Then Nelim's Pickle Tools: among the animals of kind "Andrewsarchus", at least 1 different extra coats were drawn

  Scenario: the last animal in the file, Zygolophodon
    Given Nelim's Pickle Tools: 20 adult animals of kind "Zygolophodon" are spawned
    Then Nelim's Pickle Tools: among the animals of kind "Zygolophodon", at least 1 different extra coats were drawn

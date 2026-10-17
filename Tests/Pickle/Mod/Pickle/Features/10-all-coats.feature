@requires:nelim.pickletools.coatsteps
Feature: every extra coat of every kind is drawn with its own texture

  # TEST_SCENARIOS.md scenario C, the part a game can answer for all 26 kinds and 67 coats. One animal per extra coat
  # is spawned, given that coat by index, and the graphic the renderer built for it is compared with the texPath the
  # def lists for that index. Deterministic: no chance in it. It fails when an animal could not be given its coat
  # (fewer coats than the patch lists) or when the drawn path differs. Not shown here: that the picture looks right
  # in each facing; the three most generous kinds have that in 09-coat-sheet (@review), the rest is Check-Coats.ps1
  # (every file exists, is referenced) plus 11-all-textures (the content holders answer for every file).

  Background:
    Given the save "test-colony" is loaded

  Scenario: the 2 extra coats of the Andrewsarchus are drawn with their own texture
    Given Nelim's Pickle Tools: 2 adult animals of kind "Andrewsarchus" are spawned
    And Nelim's Pickle Tools: the animal "coat-1" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 1
    Then Nelim's Pickle Tools: each animal of kind "Andrewsarchus" that carries an extra coat is drawn with that coat's own texture
    And no errors were logged

  Scenario: the 3 extra coats of the Arthropleura are drawn with their own texture
    Given Nelim's Pickle Tools: 3 adult animals of kind "Arthropleura" are spawned
    And Nelim's Pickle Tools: the animal "coat-1" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 1
    And Nelim's Pickle Tools: the animal "coat-3" is given coat 2
    Then Nelim's Pickle Tools: each animal of kind "Arthropleura" that carries an extra coat is drawn with that coat's own texture
    And no errors were logged

  Scenario: the 2 extra coats of the Castoroides are drawn with their own texture
    Given Nelim's Pickle Tools: 2 adult animals of kind "Castoroides" are spawned
    And Nelim's Pickle Tools: the animal "coat-1" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 1
    Then Nelim's Pickle Tools: each animal of kind "Castoroides" that carries an extra coat is drawn with that coat's own texture
    And no errors were logged

  Scenario: the 5 extra coats of the Chalicotherium are drawn with their own texture
    Given Nelim's Pickle Tools: 5 adult animals of kind "Chalicotherium" are spawned
    And Nelim's Pickle Tools: the animal "coat-1" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 1
    And Nelim's Pickle Tools: the animal "coat-3" is given coat 2
    And Nelim's Pickle Tools: the animal "coat-4" is given coat 3
    And Nelim's Pickle Tools: the animal "coat-5" is given coat 4
    Then Nelim's Pickle Tools: each animal of kind "Chalicotherium" that carries an extra coat is drawn with that coat's own texture
    And no errors were logged

  Scenario: the 2 extra coats of the Daeodon are drawn with their own texture
    Given Nelim's Pickle Tools: 2 adult animals of kind "Daeodon" are spawned
    And Nelim's Pickle Tools: the animal "coat-1" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 1
    Then Nelim's Pickle Tools: each animal of kind "Daeodon" that carries an extra coat is drawn with that coat's own texture
    And no errors were logged

  Scenario: the 3 extra coats of the Deinotherium are drawn with their own texture
    Given Nelim's Pickle Tools: 3 adult animals of kind "Deinotherium" are spawned
    And Nelim's Pickle Tools: the animal "coat-1" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 1
    And Nelim's Pickle Tools: the animal "coat-3" is given coat 2
    Then Nelim's Pickle Tools: each animal of kind "Deinotherium" that carries an extra coat is drawn with that coat's own texture
    And no errors were logged

  Scenario: the 3 extra coats of the Dinocrocuta are drawn with their own texture
    Given Nelim's Pickle Tools: 3 adult animals of kind "Dinocrocuta" are spawned
    And Nelim's Pickle Tools: the animal "coat-1" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 1
    And Nelim's Pickle Tools: the animal "coat-3" is given coat 2
    Then Nelim's Pickle Tools: each animal of kind "Dinocrocuta" that carries an extra coat is drawn with that coat's own texture
    And no errors were logged

  Scenario: the 2 extra coats of the Diprotodon are drawn with their own texture
    Given Nelim's Pickle Tools: 2 adult animals of kind "Diprotodon" are spawned
    And Nelim's Pickle Tools: the animal "coat-1" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 1
    Then Nelim's Pickle Tools: each animal of kind "Diprotodon" that carries an extra coat is drawn with that coat's own texture
    And no errors were logged

  Scenario: the 2 extra coats of the Doedicurus are drawn with their own texture
    Given Nelim's Pickle Tools: 2 adult animals of kind "Doedicurus" are spawned
    And Nelim's Pickle Tools: the animal "coat-1" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 1
    Then Nelim's Pickle Tools: each animal of kind "Doedicurus" that carries an extra coat is drawn with that coat's own texture
    And no errors were logged

  Scenario: the 3 extra coats of the Elasmotherium are drawn with their own texture
    Given Nelim's Pickle Tools: 3 adult animals of kind "Elasmotherium" are spawned
    And Nelim's Pickle Tools: the animal "coat-1" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 1
    And Nelim's Pickle Tools: the animal "coat-3" is given coat 2
    Then Nelim's Pickle Tools: each animal of kind "Elasmotherium" that carries an extra coat is drawn with that coat's own texture
    And no errors were logged

  Scenario: the 4 extra coats of the Enhydriodon are drawn with their own texture
    Given Nelim's Pickle Tools: 4 adult animals of kind "Enhydriodon" are spawned
    And Nelim's Pickle Tools: the animal "coat-1" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 1
    And Nelim's Pickle Tools: the animal "coat-3" is given coat 2
    And Nelim's Pickle Tools: the animal "coat-4" is given coat 3
    Then Nelim's Pickle Tools: each animal of kind "Enhydriodon" that carries an extra coat is drawn with that coat's own texture
    And no errors were logged

  Scenario: the 2 extra coats of the Gomphotaria are drawn with their own texture
    Given Nelim's Pickle Tools: 2 adult animals of kind "Gomphotaria" are spawned
    And Nelim's Pickle Tools: the animal "coat-1" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 1
    Then Nelim's Pickle Tools: each animal of kind "Gomphotaria" that carries an extra coat is drawn with that coat's own texture
    And no errors were logged

  Scenario: the 2 extra coats of the Josephoartigasia are drawn with their own texture
    Given Nelim's Pickle Tools: 2 adult animals of kind "Josephoartigasia" are spawned
    And Nelim's Pickle Tools: the animal "coat-1" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 1
    Then Nelim's Pickle Tools: each animal of kind "Josephoartigasia" that carries an extra coat is drawn with that coat's own texture
    And no errors were logged

  Scenario: the 2 extra coats of the Macrauchenia are drawn with their own texture
    Given Nelim's Pickle Tools: 2 adult animals of kind "Macrauchenia" are spawned
    And Nelim's Pickle Tools: the animal "coat-1" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 1
    Then Nelim's Pickle Tools: each animal of kind "Macrauchenia" that carries an extra coat is drawn with that coat's own texture
    And no errors were logged

  Scenario: the 2 extra coats of the Megalania are drawn with their own texture
    Given Nelim's Pickle Tools: 2 adult animals of kind "Megalania" are spawned
    And Nelim's Pickle Tools: the animal "coat-1" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 1
    Then Nelim's Pickle Tools: each animal of kind "Megalania" that carries an extra coat is drawn with that coat's own texture
    And no errors were logged

  Scenario: the 3 extra coats of the Paraceratherium are drawn with their own texture
    Given Nelim's Pickle Tools: 3 adult animals of kind "Paraceratherium" are spawned
    And Nelim's Pickle Tools: the animal "coat-1" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 1
    And Nelim's Pickle Tools: the animal "coat-3" is given coat 2
    Then Nelim's Pickle Tools: each animal of kind "Paraceratherium" that carries an extra coat is drawn with that coat's own texture
    And no errors were logged

  Scenario: the 2 extra coats of the Platybelodon are drawn with their own texture
    Given Nelim's Pickle Tools: 2 adult animals of kind "Platybelodon" are spawned
    And Nelim's Pickle Tools: the animal "coat-1" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 1
    Then Nelim's Pickle Tools: each animal of kind "Platybelodon" that carries an extra coat is drawn with that coat's own texture
    And no errors were logged

  Scenario: the 3 extra coats of the Procoptodon are drawn with their own texture
    Given Nelim's Pickle Tools: 3 adult animals of kind "Procoptodon" are spawned
    And Nelim's Pickle Tools: the animal "coat-1" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 1
    And Nelim's Pickle Tools: the animal "coat-3" is given coat 2
    Then Nelim's Pickle Tools: each animal of kind "Procoptodon" that carries an extra coat is drawn with that coat's own texture
    And no errors were logged

  Scenario: the 2 extra coats of the Pulmonoscorpius are drawn with their own texture
    Given Nelim's Pickle Tools: 2 adult animals of kind "Pulmonoscorpius" are spawned
    And Nelim's Pickle Tools: the animal "coat-1" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 1
    Then Nelim's Pickle Tools: each animal of kind "Pulmonoscorpius" that carries an extra coat is drawn with that coat's own texture
    And no errors were logged

  Scenario: the 4 extra coats of the Purussaurus are drawn with their own texture
    Given Nelim's Pickle Tools: 4 adult animals of kind "Purussaurus" are spawned
    And Nelim's Pickle Tools: the animal "coat-1" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 1
    And Nelim's Pickle Tools: the animal "coat-3" is given coat 2
    And Nelim's Pickle Tools: the animal "coat-4" is given coat 3
    Then Nelim's Pickle Tools: each animal of kind "Purussaurus" that carries an extra coat is drawn with that coat's own texture
    And no errors were logged

  Scenario: the 3 extra coats of the Sivatherium are drawn with their own texture
    Given Nelim's Pickle Tools: 3 adult animals of kind "Sivatherium" are spawned
    And Nelim's Pickle Tools: the animal "coat-1" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 1
    And Nelim's Pickle Tools: the animal "coat-3" is given coat 2
    Then Nelim's Pickle Tools: each animal of kind "Sivatherium" that carries an extra coat is drawn with that coat's own texture
    And no errors were logged

  Scenario: the 2 extra coats of the Smilodon are drawn with their own texture
    Given Nelim's Pickle Tools: 2 adult animals of kind "Smilodon" are spawned
    And Nelim's Pickle Tools: the animal "coat-1" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 1
    Then Nelim's Pickle Tools: each animal of kind "Smilodon" that carries an extra coat is drawn with that coat's own texture
    And no errors were logged

  Scenario: the 2 extra coats of the Titanis are drawn with their own texture
    Given Nelim's Pickle Tools: 2 adult animals of kind "Titanis" are spawned
    And Nelim's Pickle Tools: the animal "coat-1" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 1
    Then Nelim's Pickle Tools: each animal of kind "Titanis" that carries an extra coat is drawn with that coat's own texture
    And no errors were logged

  Scenario: the 2 extra coats of the Uintatherium are drawn with their own texture
    Given Nelim's Pickle Tools: 2 adult animals of kind "Uintatherium" are spawned
    And Nelim's Pickle Tools: the animal "coat-1" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 1
    Then Nelim's Pickle Tools: each animal of kind "Uintatherium" that carries an extra coat is drawn with that coat's own texture
    And no errors were logged

  Scenario: the 3 extra coats of the WoollyMammoth are drawn with their own texture
    Given Nelim's Pickle Tools: 3 adult animals of kind "WoollyMammoth" are spawned
    And Nelim's Pickle Tools: the animal "coat-1" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 1
    And Nelim's Pickle Tools: the animal "coat-3" is given coat 2
    Then Nelim's Pickle Tools: each animal of kind "WoollyMammoth" that carries an extra coat is drawn with that coat's own texture
    And no errors were logged

  Scenario: the 2 extra coats of the Zygolophodon are drawn with their own texture
    Given Nelim's Pickle Tools: 2 adult animals of kind "Zygolophodon" are spawned
    And Nelim's Pickle Tools: the animal "coat-1" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 1
    Then Nelim's Pickle Tools: each animal of kind "Zygolophodon" that carries an extra coat is drawn with that coat's own texture
    And no errors were logged

@requires:nelim.pickletools.coatsteps
@requires:nelim.pickletools.screenshotmode
@requires:nelim.pickletools.screenshotstudio
@requires:nelim.pickletools.camerazoom
@requires:nelim.pickletools.colonistrace
@requires:nelim.sanctuarybacklot
Feature: every coat of the three most generous kinds in three facings

  # TEST_SCENARIOS.md scenario C, the part a game can answer: each coat (-1 is the original) of Chalicotherium (5 extra),
  # Enhydriodon (4) and Purussaurus (4) is given to one animal, which is turned North, South and East (West is the mirrored
  # East, nothing is shipped for it). Per facing, the graphic the renderer built for each animal is compared with the
  # texPath its coat lists, and the log must hold no missing texture. The captures are for a person to open (@review): they
  # are what shows a flipped or missing piece. The other 23 kinds are not spawned here: Check-Coats.ps1 proves every
  # texture file exists and is referenced, 02-textures proves the content holders answer for a sample.
  # Played in the Sanctuary pass: -DepMap wsl-deps.gallery.map -Filter '@coatsheet'.

  Background:
    Given the save "Nelims-tribe" is loaded
  @coatsheet @review
  Scenario: every coat of the Chalicotherium in three facings
    Given I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Sanctuary: the vanometric cell of the sanctuary is hidden
    And Nelim's Sanctuary: the floor of the sanctuary "bare-clearing" is bared
    And Nelim's Sanctuary: I am at the sanctuary "bare-clearing"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: 6 adult animals of kind "Chalicotherium" are spawned around (200, 152)
    And Nelim's Pickle Tools: the animal "coat-1" is given coat -1
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-3" is given coat 1
    And Nelim's Pickle Tools: the animal "coat-4" is given coat 2
    And Nelim's Pickle Tools: the animal "coat-5" is given coat 3
    And Nelim's Pickle Tools: the animal "coat-6" is given coat 4
    And Nelim's Pickle Tools: the animal "coat-1" stands at (196, 149) facing North
    And Nelim's Pickle Tools: the animal "coat-2" stands at (200, 149) facing North
    And Nelim's Pickle Tools: the animal "coat-3" stands at (204, 149) facing North
    And Nelim's Pickle Tools: the animal "coat-4" stands at (196, 153) facing North
    And Nelim's Pickle Tools: the animal "coat-5" stands at (200, 153) facing North
    And Nelim's Pickle Tools: the animal "coat-6" stands at (204, 153) facing North
    Then Nelim's Pickle Tools: each animal of kind "Chalicotherium" that carries an extra coat is drawn with that coat's own texture
    And Nelim's Pickle Tools: time is paused for the capture
    When Nelim's Pickle Tools: I frame the cells (193, 146) to (207, 156) filling 90 percent of the screen
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "coatsheet-chalicotherium-north"
    And Nelim's Pickle Tools: the animal "coat-1" stands at (196, 149) facing South
    And Nelim's Pickle Tools: the animal "coat-2" stands at (200, 149) facing South
    And Nelim's Pickle Tools: the animal "coat-3" stands at (204, 149) facing South
    And Nelim's Pickle Tools: the animal "coat-4" stands at (196, 153) facing South
    And Nelim's Pickle Tools: the animal "coat-5" stands at (200, 153) facing South
    And Nelim's Pickle Tools: the animal "coat-6" stands at (204, 153) facing South
    Then Nelim's Pickle Tools: each animal of kind "Chalicotherium" that carries an extra coat is drawn with that coat's own texture
    And Nelim's Pickle Tools: time is paused for the capture
    When Nelim's Pickle Tools: I frame the cells (193, 146) to (207, 156) filling 90 percent of the screen
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "coatsheet-chalicotherium-south"
    And Nelim's Pickle Tools: the animal "coat-1" stands at (196, 149) facing East
    And Nelim's Pickle Tools: the animal "coat-2" stands at (200, 149) facing East
    And Nelim's Pickle Tools: the animal "coat-3" stands at (204, 149) facing East
    And Nelim's Pickle Tools: the animal "coat-4" stands at (196, 153) facing East
    And Nelim's Pickle Tools: the animal "coat-5" stands at (200, 153) facing East
    And Nelim's Pickle Tools: the animal "coat-6" stands at (204, 153) facing East
    Then Nelim's Pickle Tools: each animal of kind "Chalicotherium" that carries an extra coat is drawn with that coat's own texture
    And Nelim's Pickle Tools: time is paused for the capture
    When Nelim's Pickle Tools: I frame the cells (193, 146) to (207, 156) filling 90 percent of the screen
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "coatsheet-chalicotherium-east"
    And no errors were logged

  @coatsheet @review
  Scenario: every coat of the Enhydriodon in three facings
    Given I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Sanctuary: the vanometric cell of the sanctuary is hidden
    And Nelim's Sanctuary: the floor of the sanctuary "bare-clearing" is bared
    And Nelim's Sanctuary: I am at the sanctuary "bare-clearing"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: 5 adult animals of kind "Enhydriodon" are spawned around (200, 152)
    And Nelim's Pickle Tools: the animal "coat-1" is given coat -1
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-3" is given coat 1
    And Nelim's Pickle Tools: the animal "coat-4" is given coat 2
    And Nelim's Pickle Tools: the animal "coat-5" is given coat 3
    And Nelim's Pickle Tools: the animal "coat-1" stands at (196, 149) facing North
    And Nelim's Pickle Tools: the animal "coat-2" stands at (200, 149) facing North
    And Nelim's Pickle Tools: the animal "coat-3" stands at (204, 149) facing North
    And Nelim's Pickle Tools: the animal "coat-4" stands at (196, 153) facing North
    And Nelim's Pickle Tools: the animal "coat-5" stands at (200, 153) facing North
    Then Nelim's Pickle Tools: each animal of kind "Enhydriodon" that carries an extra coat is drawn with that coat's own texture
    And Nelim's Pickle Tools: time is paused for the capture
    When Nelim's Pickle Tools: I frame the cells (193, 146) to (207, 156) filling 90 percent of the screen
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "coatsheet-enhydriodon-north"
    And Nelim's Pickle Tools: the animal "coat-1" stands at (196, 149) facing South
    And Nelim's Pickle Tools: the animal "coat-2" stands at (200, 149) facing South
    And Nelim's Pickle Tools: the animal "coat-3" stands at (204, 149) facing South
    And Nelim's Pickle Tools: the animal "coat-4" stands at (196, 153) facing South
    And Nelim's Pickle Tools: the animal "coat-5" stands at (200, 153) facing South
    Then Nelim's Pickle Tools: each animal of kind "Enhydriodon" that carries an extra coat is drawn with that coat's own texture
    And Nelim's Pickle Tools: time is paused for the capture
    When Nelim's Pickle Tools: I frame the cells (193, 146) to (207, 156) filling 90 percent of the screen
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "coatsheet-enhydriodon-south"
    And Nelim's Pickle Tools: the animal "coat-1" stands at (196, 149) facing East
    And Nelim's Pickle Tools: the animal "coat-2" stands at (200, 149) facing East
    And Nelim's Pickle Tools: the animal "coat-3" stands at (204, 149) facing East
    And Nelim's Pickle Tools: the animal "coat-4" stands at (196, 153) facing East
    And Nelim's Pickle Tools: the animal "coat-5" stands at (200, 153) facing East
    Then Nelim's Pickle Tools: each animal of kind "Enhydriodon" that carries an extra coat is drawn with that coat's own texture
    And Nelim's Pickle Tools: time is paused for the capture
    When Nelim's Pickle Tools: I frame the cells (193, 146) to (207, 156) filling 90 percent of the screen
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "coatsheet-enhydriodon-east"
    And no errors were logged

  @coatsheet @review
  Scenario: every coat of the Purussaurus in three facings
    Given I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Sanctuary: the vanometric cell of the sanctuary is hidden
    And Nelim's Sanctuary: the floor of the sanctuary "bare-clearing" is bared
    And Nelim's Sanctuary: I am at the sanctuary "bare-clearing"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: 5 adult animals of kind "Purussaurus" are spawned around (200, 152)
    And Nelim's Pickle Tools: the animal "coat-1" is given coat -1
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-3" is given coat 1
    And Nelim's Pickle Tools: the animal "coat-4" is given coat 2
    And Nelim's Pickle Tools: the animal "coat-5" is given coat 3
    And Nelim's Pickle Tools: the animal "coat-1" stands at (196, 149) facing North
    And Nelim's Pickle Tools: the animal "coat-2" stands at (200, 149) facing North
    And Nelim's Pickle Tools: the animal "coat-3" stands at (204, 149) facing North
    And Nelim's Pickle Tools: the animal "coat-4" stands at (196, 153) facing North
    And Nelim's Pickle Tools: the animal "coat-5" stands at (200, 153) facing North
    Then Nelim's Pickle Tools: each animal of kind "Purussaurus" that carries an extra coat is drawn with that coat's own texture
    And Nelim's Pickle Tools: time is paused for the capture
    When Nelim's Pickle Tools: I frame the cells (193, 146) to (207, 156) filling 90 percent of the screen
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "coatsheet-purussaurus-north"
    And Nelim's Pickle Tools: the animal "coat-1" stands at (196, 149) facing South
    And Nelim's Pickle Tools: the animal "coat-2" stands at (200, 149) facing South
    And Nelim's Pickle Tools: the animal "coat-3" stands at (204, 149) facing South
    And Nelim's Pickle Tools: the animal "coat-4" stands at (196, 153) facing South
    And Nelim's Pickle Tools: the animal "coat-5" stands at (200, 153) facing South
    Then Nelim's Pickle Tools: each animal of kind "Purussaurus" that carries an extra coat is drawn with that coat's own texture
    And Nelim's Pickle Tools: time is paused for the capture
    When Nelim's Pickle Tools: I frame the cells (193, 146) to (207, 156) filling 90 percent of the screen
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "coatsheet-purussaurus-south"
    And Nelim's Pickle Tools: the animal "coat-1" stands at (196, 149) facing East
    And Nelim's Pickle Tools: the animal "coat-2" stands at (200, 149) facing East
    And Nelim's Pickle Tools: the animal "coat-3" stands at (204, 149) facing East
    And Nelim's Pickle Tools: the animal "coat-4" stands at (196, 153) facing East
    And Nelim's Pickle Tools: the animal "coat-5" stands at (200, 153) facing East
    Then Nelim's Pickle Tools: each animal of kind "Purussaurus" that carries an extra coat is drawn with that coat's own texture
    And Nelim's Pickle Tools: time is paused for the capture
    When Nelim's Pickle Tools: I frame the cells (193, 146) to (207, 156) filling 90 percent of the screen
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "coatsheet-purussaurus-east"
    And no errors were logged


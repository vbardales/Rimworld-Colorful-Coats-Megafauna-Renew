@requires:nelim.pickletools.savesteps
@requires:nelim.pickletools.coatsteps
Feature: the mod removed from a save leaves no coat and no error

  # TEST_SCENARIOS.md scenario F. Played as a sequence, never alone: the first scenario saves animals in extra coats
  # with the mod, the second is played in a second launch of the game WITHOUT the mod and loads that save.
  #   -Filter '::coats are saved with the mod' -Then '::the save loads without the mod' -ThenWithout nelim.colorfulcoats.megafauna
  # Nothing in the save points into the alternateGraphics list (the coat is derived from the thing id, see D), so after
  # the removal every animal is back in its original graphic and the load is clean. Scenario E (the mod added to a save
  # that never had it) needs no test of its own: every scenario of this suite loads the mod into "test-colony".

  Scenario: coats are saved with the mod
    Given the save "test-colony" is loaded
    And Nelim's Pickle Tools: 16 adult animals of kind "WoollyMammoth" are spawned
    Then Nelim's Pickle Tools: among the animals of kind "WoollyMammoth", at least 2 different extra coats were drawn
    When Nelim's Pickle Tools: the game is saved as "coats-with-mod"
    And Nelim's Pickle Tools: the saved game "coats-with-mod" is handed to the mod "nelim.colorfulcoats.megafauna.pickletests"

  Scenario: the save loads without the mod
    Given the save "coats-with-mod" is loaded
    Then 16 "WoollyMammoth" exist
    And Nelim's Pickle Tools: no animal of kind "WoollyMammoth" carries an extra coat
    And no errors were logged

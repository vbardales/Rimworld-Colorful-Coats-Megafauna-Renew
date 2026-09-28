@requires:nelim.pickletools.loadaudit
Feature: the mod loads without a message of its own

  # Last on purpose: the audit reads the whole log so far, including the scenarios before it, and
  # files run in name order.

  Scenario: nothing in the log belongs to this mod
    Then Nelim's Pickle Tools: the load of the mod "nelim.colorfulcoats.megafauna" is clean
    And no errors were logged

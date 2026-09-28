Feature: the patch reached every animal it aims at

  # TESTING.md scenario B, the half a definition can answer. The 26 operations sit in one
  # PatchOperationSequence and a sequence stops at its first operation that returns false, so a
  # renamed animal would cost its coats to every animal listed after it, with nothing in the log.
  # Each operation carries <success>Always</success>, which is exactly what hides that failure:
  # only "was patched by mod" sees it. Check-Coats.ps1 proves the names exist in Megafauna's
  # files; this proves the running game applied the patch to each of them.

  Scenario: Megafauna is running and loads before this mod
    Then mod "Spino.Megafauna" is loaded
    And mod "nelim.colorfulcoats.megafauna" loads after "Spino.Megafauna"

  Scenario Outline: <kind> was changed by this mod
    Then def "<kind>" of type "PawnKindDef" exists
    # The step takes the mod display name as the game reports it, not the packageId. A run passed the
    # packageId and every one of these 26 failed with the display name in the message.
    And def "<kind>" was patched by mod "Colorful Coats - Megafauna! Renew (unofficial)"

    Examples:
      | kind |
      | Andrewsarchus |
      | Arthropleura |
      | Castoroides |
      | Chalicotherium |
      | Daeodon |
      | Deinotherium |
      | Dinocrocuta |
      | Diprotodon |
      | Doedicurus |
      | Elasmotherium |
      | Enhydriodon |
      | Gomphotaria |
      | Josephoartigasia |
      | Macrauchenia |
      | Megalania |
      | Paraceratherium |
      | Platybelodon |
      | Procoptodon |
      | Pulmonoscorpius |
      | Purussaurus |
      | Sivatherium |
      | Smilodon |
      | Titanis |
      | Uintatherium |
      | WoollyMammoth |
      | Zygolophodon |

  @requires:nelim.pickletools.coatsteps
  Scenario: the documented chances and coat counts applied
    # "WoollyMammoth" is a ThingDef and a PawnKindDef, so Pickle's own field step refuses it as ambiguous:
    # the CoatSteps step names the kind, and checks the number of coats along with the chance.
    Then Nelim's Pickle Tools: the pawn kind "WoollyMammoth" keeps 3 alternate graphics at a chance of "0.7"
    And Nelim's Pickle Tools: the pawn kind "Zygolophodon" keeps 2 alternate graphics at a chance of "0.6"
    And Nelim's Pickle Tools: the pawn kind "Chalicotherium" keeps 5 alternate graphics at a chance of "0.8"

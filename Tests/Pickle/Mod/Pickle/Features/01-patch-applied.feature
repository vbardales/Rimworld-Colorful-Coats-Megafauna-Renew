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

  @requires:nelim.pickletools.coatsteps @minimal-only
  Scenario: the documented chances and coat counts applied
    # "WoollyMammoth" is a ThingDef and a PawnKindDef, so Pickle's own field step refuses it as ambiguous:
    # the CoatSteps step names the kind, and checks the number of coats along with the chance.
    #
    # This counts, not just detects: 6ced571's incompat run found it wrong under that pass, 6 not 3.
    # Two PatchOperationAdd from two mods do not overwrite alternateGraphics, a List<T>, they both append
    # an <li> to it - the list is cumulative, the scalar alternateGraphicChance field is not (0.7 held).
    # This scenario is only true when purpleyam's original is absent, and a suite cannot tag "not staged", so it is
    # tagged @minimal-only and the incompatibility pass excludes it: -Filter '01-patch-applied,06-original-alongside,!@minimal-only'.
    # A red that is expected is not a result (run 35a1ae9 showed it: 30 of 31, the one red being this guard). The
    # symptom with both mods, 6 alternate graphics, is asserted in 06-original-alongside.feature.
    Then mod "purpleyam.colorfulcoats.spinomegafauna" is not loaded
    And Nelim's Pickle Tools: the pawn kind "WoollyMammoth" keeps 3 alternate graphics at a chance of "0.7"
    And Nelim's Pickle Tools: the pawn kind "Zygolophodon" keeps 2 alternate graphics at a chance of "0.6"
    And Nelim's Pickle Tools: the pawn kind "Chalicotherium" keeps 5 alternate graphics at a chance of "0.8"

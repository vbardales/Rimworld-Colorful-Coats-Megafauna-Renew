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
    And def "<kind>" was patched by mod "nelim.colorfulcoats.megafauna"

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

  Scenario: the documented chances applied
    Then def "WoollyMammoth" field "alternateGraphicChance" is "0.7"
    And def "Zygolophodon" field "alternateGraphicChance" is "0.6"
    And def "Chalicotherium" field "alternateGraphicChance" is "0.8"

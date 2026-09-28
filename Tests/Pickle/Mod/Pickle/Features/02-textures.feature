@requires:nelim.pickletools.textureowner
Feature: a sample of the coat textures is served by this mod

  # Offline, Check-Coats.ps1 proves all 201 files exist and are all referenced. This proves the
  # game's own content holders answer for a sample and that no other running mod took the path.
  # A sample and not all 201: every row exercises the same content-holder path, so the other rows
  # would only repeat it. The woolly mammoth carries three coats, the scorpion two, and
  # Zygolophodon is the last animal in the patch file. West is not shipped: the game mirrors east.

  Scenario Outline: <path> facing <rotation> is answered by this mod
    Then Nelim's Pickle Tools: the texture "Things/Pawn/Animal/<path>_<rotation>" is answered by the mod "nelim.colorfulcoats.megafauna"

    Examples:
      | path | rotation |
      | WoollyMammoth/megafauna_woollymammothA | north |
      | WoollyMammoth/megafauna_woollymammothA | east |
      | WoollyMammoth/megafauna_woollymammothA | south |
      | WoollyMammoth/megafauna_woollymammothB | north |
      | WoollyMammoth/megafauna_woollymammothB | east |
      | WoollyMammoth/megafauna_woollymammothB | south |
      | WoollyMammoth/megafauna_woollymammothC | north |
      | WoollyMammoth/megafauna_woollymammothC | east |
      | WoollyMammoth/megafauna_woollymammothC | south |
      | Pulmonoscorpius/megafauna_pulmonoscorpiusB | north |
      | Zygolophodon/megafauna_zygolophodonB | north |
      | Zygolophodon/megafauna_zygolophodonB | east |
      | Zygolophodon/megafauna_zygolophodonB | south |

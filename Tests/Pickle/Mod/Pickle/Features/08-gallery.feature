# The Workshop gallery of Colorful Coats - Megafauna! Renew, in the order it is uploaded (0- is the copy of the Preview).
#
# The story: the keeper's evening. At dusk Nelim (Virginie, the one colonist of the Sanctuary) lights a fire in the bare
# clearing. The herd of the dry plains comes in from the east, drawn by the light, and each picture is one species stepping
# into the firelight while Nelim watches them come: dark hair in a bun (RI_HairStyle_FemaleBun from RimImmortal, set after her own face so it stays; the save's bun is not trusted), a teal shirt and trousers that stand out against the
# warm browns of the coats and of the earth, her own face (two brows, a smirk, a blink). Time unfolds in the series
# (PUBLISHING.md, GALERIE.md): each scenario reloads the save, sets 19 h once, waits the elapsed game time, then poses the
# animals (setup 60 ticks, then +5 game minutes per picture, 208 ticks): 19:00, 19:05, 19:10, 19:15.
#
# Shot plan (one image per scenario, same corner of `bare-clearing`, 14 x 9 cells framed at 90 percent (tighter, 2026-10-16: Nelim and the herd read larger), bare earth, the
# fire at the west, every animal turned to it):
#   1 two mammoths in two coats, the best known animal, the first of the herd to reach the fire;
#   2 three Enhydriodon in three coats, the most generous small kind, the herd spread across the clearing;
#   3 three giant scorpions, a pack that is not only mammals, one in the original colour for contrast;
#   4 two Chalicotherium, the kind with the most coats, the last of the herd to reach the fire.
# Coats are chosen, not left to chance (each animal is given a named coat, -1 is the original): that is staging. The
# 24-animal scenarios of 03-coats-on-spawn.feature are what prove that coats occur.
#
# Each scenario is @review: a green run proves a picture was taken, not that it is worth uploading. The session opens every
# capture and judges it before anything goes to Art/Gallery/. Run under wsl-deps.gallery.map (the minimal pass has no
# Sanctuary and skips these by their @requires): Submit-PickleRun.ps1 ... -DepMap wsl-deps.gallery.map -Filter '@gallery'.
# The subtitles of the four images are in PUBLICATION.md, "Gallery subtitles".
# Steps: the places, Nelim's face and their cleaning are Nelim's Sanctuary: steps (SanctuaryBacklot); the generic tools
# (presentation mode, decor, ticks, pause, framing, clothes) are Nelim's Pickle Tools: steps; the spawn and coat steps are
# CoatSteps (PickleTools).
@requires:nelim.pickletools.coatsteps
@requires:nelim.pickletools.stagedecor
@requires:nelim.pickletools.screenshotmode
@requires:nelim.pickletools.screenshotstudio
@requires:nelim.pickletools.camerazoom
@requires:nelim.pickletools.colonistrace
@requires:RI.RimImmortals.Hairstyle
@requires:nelim.sanctuarybacklot
Feature: Workshop gallery captures

  Background:
    Given the save "Nelims-tribe" is loaded

  # Image 1, 19:00: the animal everyone knows, and the one the original shows.
  @review @gallery
  Scenario: two mammoths in the firelight
    Given I set the hour to 19
    And I set the weather to "Clear"
    And Nelim's Sanctuary: the vanometric cell of the sanctuary is hidden
    And Nelim's Sanctuary: the floor of the sanctuary "bare-clearing" is bared
    And Nelim's Sanctuary: I am at the sanctuary "bare-clearing"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I place the decor "Campfire" at (193, 152)
    And Nelim's Pickle Tools: the decor "Campfire" at (193, 152) is lit
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (193, 148)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (193, 148) is lit
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (193, 156)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (193, 156) is lit
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CollarShirt" dyed rgb (24, 74, 84)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (16, 52, 60)
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" hairstyle is "RI_HairStyle_FemaleBun"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (58, 36, 28)
    And Nelim's Pickle Tools: "Nelim" stands at (191, 154) facing East
    And Nelim's Pickle Tools: 2 adult animals of kind "WoollyMammoth" are spawned around (199, 152)
    And Nelim's Pickle Tools: the animal "coat-1" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 2
    And Nelim's Pickle Tools: the animal "coat-1" stands at (198, 150) facing West
    And Nelim's Pickle Tools: the animal "coat-2" stands at (200, 154) facing West
    And Nelim's Pickle Tools: time is paused for the capture
    When Nelim's Pickle Tools: I frame the cells (189, 148) to (202, 156) filling 90 percent of the screen
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "gallery-1-mammoths"

  # Image 2, 19:05: the most generous small kind, four extra coats at 0.8. The point is the variety.
  @review @gallery
  Scenario: three Enhydriodon in the firelight
    Given I set the hour to 19
    And I set the weather to "Clear"
    And Nelim's Sanctuary: the vanometric cell of the sanctuary is hidden
    And Nelim's Sanctuary: the floor of the sanctuary "bare-clearing" is bared
    And Nelim's Sanctuary: I am at the sanctuary "bare-clearing"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 268 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I place the decor "Campfire" at (193, 152)
    And Nelim's Pickle Tools: the decor "Campfire" at (193, 152) is lit
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (193, 148)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (193, 148) is lit
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (193, 156)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (193, 156) is lit
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CollarShirt" dyed rgb (24, 74, 84)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (16, 52, 60)
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" hairstyle is "RI_HairStyle_FemaleBun"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (58, 36, 28)
    And Nelim's Pickle Tools: "Nelim" stands at (191, 154) facing East
    And Nelim's Pickle Tools: 3 adult animals of kind "Enhydriodon" are spawned around (199, 152)
    And Nelim's Pickle Tools: the animal "coat-1" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 1
    And Nelim's Pickle Tools: the animal "coat-3" is given coat 3
    And Nelim's Pickle Tools: the animal "coat-1" stands at (197, 150) facing West
    And Nelim's Pickle Tools: the animal "coat-2" stands at (200, 153) facing West
    And Nelim's Pickle Tools: the animal "coat-3" stands at (197, 155) facing West
    And Nelim's Pickle Tools: time is paused for the capture
    When Nelim's Pickle Tools: I frame the cells (189, 148) to (202, 156) filling 90 percent of the screen
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "gallery-2-enhydriodon"

  # Image 3, 19:10: not a mammal, so the pack is not only mammals.
  @review @gallery
  Scenario: three giant scorpions in the firelight
    Given I set the hour to 19
    And I set the weather to "Clear"
    And Nelim's Sanctuary: the vanometric cell of the sanctuary is hidden
    And Nelim's Sanctuary: the floor of the sanctuary "bare-clearing" is bared
    And Nelim's Sanctuary: I am at the sanctuary "bare-clearing"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 476 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I place the decor "Campfire" at (193, 152)
    And Nelim's Pickle Tools: the decor "Campfire" at (193, 152) is lit
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (193, 148)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (193, 148) is lit
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (193, 156)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (193, 156) is lit
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CollarShirt" dyed rgb (24, 74, 84)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (16, 52, 60)
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" hairstyle is "RI_HairStyle_FemaleBun"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (58, 36, 28)
    And Nelim's Pickle Tools: "Nelim" stands at (191, 154) facing East
    And Nelim's Pickle Tools: 3 adult animals of kind "Pulmonoscorpius" are spawned around (199, 152)
    And Nelim's Pickle Tools: the animal "coat-1" is given coat -1
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-3" is given coat 1
    And Nelim's Pickle Tools: the animal "coat-1" stands at (197, 150) facing West
    And Nelim's Pickle Tools: the animal "coat-2" stands at (200, 153) facing West
    And Nelim's Pickle Tools: the animal "coat-3" stands at (197, 155) facing West
    And Nelim's Pickle Tools: time is paused for the capture
    When Nelim's Pickle Tools: I frame the cells (189, 148) to (202, 156) filling 90 percent of the screen
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "gallery-3-scorpions"

  # Image 4, 19:15: the kind with the most coats, five extra.
  @review @gallery
  Scenario: two Chalicotherium in the firelight
    Given I set the hour to 19
    And I set the weather to "Clear"
    And Nelim's Sanctuary: the vanometric cell of the sanctuary is hidden
    And Nelim's Sanctuary: the floor of the sanctuary "bare-clearing" is bared
    And Nelim's Sanctuary: I am at the sanctuary "bare-clearing"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 684 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I place the decor "Campfire" at (193, 152)
    And Nelim's Pickle Tools: the decor "Campfire" at (193, 152) is lit
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (193, 148)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (193, 148) is lit
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (193, 156)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (193, 156) is lit
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CollarShirt" dyed rgb (24, 74, 84)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (16, 52, 60)
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" hairstyle is "RI_HairStyle_FemaleBun"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (58, 36, 28)
    And Nelim's Pickle Tools: "Nelim" stands at (191, 154) facing East
    And Nelim's Pickle Tools: 2 adult animals of kind "Chalicotherium" are spawned around (199, 152)
    And Nelim's Pickle Tools: the animal "coat-1" is given coat 1
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 4
    And Nelim's Pickle Tools: the animal "coat-1" stands at (198, 149) facing West
    And Nelim's Pickle Tools: the animal "coat-2" stands at (201, 154) facing West
    And Nelim's Pickle Tools: time is paused for the capture
    When Nelim's Pickle Tools: I frame the cells (189, 148) to (202, 156) filling 90 percent of the screen
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "gallery-4-chalicotherium"

# SHOTLIST 2026-10-27 (shootGallery 9.0, director pass by Opus kept in part). Supersedes the shot plan below; scenarios are rewritten from it, none played before every scene is at 4 or more.
# Story: the keeper's evening walk. Nelim (only colonist, NSB) crosses her land at dusk, feeds and settles the herd of the dry plains, species by species.
# Time: start 18 h, cumulative waits 60, 893, 1727, 2560 ticks = 18:00, 18:20, 18:40, 19:00, Clear. Outfit continuity: teal Apparel_CollarShirt (24,74,84), Apparel_Pants (16,52,60), bun, own face.
# 1 opening, WIDE, bare-clearing 18:00: Nelim forced to haul WoodLog to (192,152) mid-stride (instant: the last log for the fire, which is already lit decor); 2 WoollyMammoth, one ingests Hay at (199,153) head down, one walks in; TorchLamp (198,150); frame (186,146)-(205,158). est 4.5, risk: Hay ingest by a mammoth never played.
# 2 MEDIUM, water-garden bank 18:20 (cells x143-158 z168-176, avoid (149,173) and (150,173)): 3 Enhydriodon in 3 hues that read apart, one lying facing South (front view), one walking to the water; Nelim hauls Meat_Muffalo to (150,170); frame (143,166)-(158,178). est 4, risk: bank cells never photographed, "lies at" unseen.
# 3 TIGHT, bare-clearing 18:40: 3 Pulmonoscorpius (coats -1, 0, 1) ingest Meat_Muffalo at (199,152) from 3 sides, the northern one faces South; Nelim wary (expression normal) at the west edge facing East, just after she threw the meat; TorchLamp (197,149); frame (195,149)-(202,155). est 4.5.
# 4 closing, MEDIUM-WIDE, bare-clearing 19:00, night, Campfire + 2 TorchLamp: 3 Chalicotherium (coats -1, 1, 4), two lying facing South and West, one walking to the fire; Nelim sits on a Stool beside the Campfire (step `"Nelim" sits on the building "Stool" at (x, z)`, placed on it, no Ingest; instant: the herd settles); frame (187,147)-(204,157). est 4 (NPT 2026-10-27: no ground-sit step, Stool substitute; fire stays pre-lit decor). Risk: Stool seat pose unplayed.
# Expression: smile on default scenes (own face, MouthSmile + LidCheerful, then normal+blink last; check on the capture), normal in scene 3 (wary). Plants_YellowTallGrass dropped (invisible). Gesture obtained by forced jobs, then "I advance the paused game by exactly N ticks" (30 to 60), then "time is paused for the capture".
# Steps used: the places, the face and the cleaning are Nelim's Sanctuary: steps; the jobs, the lying and sitting poses, the decor, the framing and the
# face are Nelim's Pickle Tools: steps (NPT answered 2026-10-27: sitting on a Stool, Campfire pre-lit decor); the spawn and coat steps are CoatSteps.
# Not played yet: the animal Ingest, "lies at" and "sits on the building" steps. The first run of these scenarios is the probe: a failure text goes to NPT.
# Each scenario is @review: a green run proves a picture was taken, not that it is worth uploading. The session opens every capture.
# Run: Submit-PickleRun.ps1 -Mod ColorfulCoatsMegafaunaRenew -DepMap wsl-deps.gallery.map -Filter '@gallery'. Subtitles: PUBLICATION.md, "Gallery subtitles".
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

  # Image 1, 18:00, WIDE, opening: Nelim brings the last log to the fire while the first mammoths reach the hay. Just before the fire is fed.
  @review @gallery
  Scenario: two mammoths reach the clearing
    Given I set the hour to 18
    And I set the weather to "Clear"
    And Nelim's Sanctuary: the vanometric cell of the sanctuary is hidden
    And Nelim's Sanctuary: the floor of the sanctuary "bare-clearing" is bared
    And Nelim's Sanctuary: I am at the sanctuary "bare-clearing"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: the temperature of the map is 18 degrees
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I place the decor "Campfire" at (193, 152)
    And Nelim's Pickle Tools: the decor "Campfire" at (193, 152) is lit
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (198, 150)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (198, 150) is lit
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CollarShirt" dyed rgb (24, 74, 84)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (16, 52, 60)
    And Nelim's Pickle Tools: "Nelim" stands at (188, 152) facing East
    And Nelim's Pickle Tools: 10 of the item "Hay" are spawned at (199, 153)
    And Nelim's Pickle Tools: 2 adult animals of kind "WoollyMammoth" are spawned around (200, 152)
    And Nelim's Pickle Tools: the animal "coat-1" is given coat 1
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 2
    And Nelim's Pickle Tools: the animal "coat-1" stands at (198, 153) facing West
    And Nelim's Pickle Tools: the animal "coat-2" stands at (204, 150) facing West
    And Nelim's Pickle Tools: "coat-1" is forced into the job "Ingest" on the item "Hay" at (199, 153)
    And Nelim's Pickle Tools: "coat-2" is forced to walk to (200, 151)
    And Nelim's Pickle Tools: "Nelim" is forced to haul 5 of the item "WoodLog" to (192, 152)
    And Nelim's Pickle Tools: time is paused for the capture
    And Nelim's Pickle Tools: I advance the paused game by exactly 40 ticks
    When Nelim's Pickle Tools: I frame the cells (186, 146) to (205, 158) filling 90 percent of the screen
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And Nelim's Pickle Tools: "Nelim" face kit is "neutral"
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Nelim's Pickle Tools: "Nelim" hairstyle is "RI_HairStyle_FemaleBun"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (58, 36, 28)
    And Nelim's Pickle Tools: "Nelim" facial expression is "normal+blink"
    And Nelim's Pickle Tools: I let 5 frames pass
    And I take a screenshot "gallery-1-mammoths"

  # Image 2, 18:20, MEDIUM, the pond: the Enhydriodon come down to the water, one lies facing us. Nelim drops meat for them.
  @review @gallery
  Scenario: three Enhydriodon at the water
    Given I set the hour to 18
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "water-garden"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: the temperature of the map is 18 degrees
    And Nelim's Pickle Tools: I let 893 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CollarShirt" dyed rgb (24, 74, 84)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (16, 52, 60)
    And Nelim's Pickle Tools: "Nelim" stands at (146, 170) facing East
    And Nelim's Pickle Tools: 3 adult animals of kind "Enhydriodon" are spawned around (152, 171)
    And Nelim's Pickle Tools: the animal "coat-1" is given coat -1
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 1
    And Nelim's Pickle Tools: the animal "coat-3" is given coat 2
    And Nelim's Pickle Tools: the animal "coat-1" lies at (152, 171) facing South
    And Nelim's Pickle Tools: the animal "coat-2" stands at (155, 172) facing West
    And Nelim's Pickle Tools: the animal "coat-3" stands at (150, 174) facing East
    And Nelim's Pickle Tools: "coat-2" is forced to walk to (154, 173)
    And Nelim's Pickle Tools: "Nelim" is forced to haul 5 of the item "Meat_Muffalo" to (150, 170)
    And Nelim's Pickle Tools: time is paused for the capture
    And Nelim's Pickle Tools: I advance the paused game by exactly 40 ticks
    When Nelim's Pickle Tools: I frame the cells (143, 166) to (158, 178) filling 90 percent of the screen
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And Nelim's Pickle Tools: "Nelim" face kit is "neutral"
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Nelim's Pickle Tools: "Nelim" hairstyle is "RI_HairStyle_FemaleBun"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (58, 36, 28)
    And Nelim's Pickle Tools: "Nelim" facial expression is "normal+blink"
    And Nelim's Pickle Tools: I let 5 frames pass
    And I take a screenshot "gallery-2-enhydriodon"

  # Image 3, 18:40, TIGHT: three scorpions close on the meat Nelim has just thrown; she steps back, wary. The northern one faces us.
  @review @gallery
  Scenario: three giant scorpions on the meat
    Given I set the hour to 18
    And I set the weather to "Clear"
    And Nelim's Sanctuary: the vanometric cell of the sanctuary is hidden
    And Nelim's Sanctuary: the floor of the sanctuary "bare-clearing" is bared
    And Nelim's Sanctuary: I am at the sanctuary "bare-clearing"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: the temperature of the map is 18 degrees
    And Nelim's Pickle Tools: I let 1727 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I place the decor "Campfire" at (193, 152)
    And Nelim's Pickle Tools: the decor "Campfire" at (193, 152) is lit
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (197, 149)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (197, 149) is lit
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CollarShirt" dyed rgb (24, 74, 84)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (16, 52, 60)
    And Nelim's Pickle Tools: "Nelim" stands at (195, 152) facing East
    And Nelim's Pickle Tools: 3 of the item "Meat_Muffalo" are spawned at (199, 152)
    And Nelim's Pickle Tools: 3 adult animals of kind "Pulmonoscorpius" are spawned around (199, 152)
    And Nelim's Pickle Tools: the animal "coat-1" is given coat -1
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 0
    And Nelim's Pickle Tools: the animal "coat-3" is given coat 1
    And Nelim's Pickle Tools: the animal "coat-1" stands at (197, 151) facing East
    And Nelim's Pickle Tools: the animal "coat-2" stands at (199, 149) facing South
    And Nelim's Pickle Tools: the animal "coat-3" stands at (201, 153) facing West
    And Nelim's Pickle Tools: "coat-1" is forced into the job "Ingest" on the item "Meat_Muffalo" at (199, 152)
    And Nelim's Pickle Tools: "coat-2" is forced into the job "Ingest" on the item "Meat_Muffalo" at (199, 152)
    And Nelim's Pickle Tools: "coat-3" is forced into the job "Ingest" on the item "Meat_Muffalo" at (199, 152)
    And Nelim's Pickle Tools: time is paused for the capture
    And Nelim's Pickle Tools: I advance the paused game by exactly 40 ticks
    When Nelim's Pickle Tools: I frame the cells (195, 149) to (202, 155) filling 90 percent of the screen
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And Nelim's Pickle Tools: "Nelim" face kit is "neutral"
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" hairstyle is "RI_HairStyle_FemaleBun"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (58, 36, 28)
    And Nelim's Pickle Tools: "Nelim" facial expression is "normal+blink"
    And Nelim's Pickle Tools: I let 5 frames pass
    And I take a screenshot "gallery-3-scorpions"

  # Image 4, 19:00, MEDIUM-WIDE, closing: night, the herd settles by the fire, Nelim sits on a stool beside it.
  @review @gallery
  Scenario: the Chalicotherium settle by the fire
    Given I set the hour to 18
    And I set the weather to "Clear"
    And Nelim's Sanctuary: the vanometric cell of the sanctuary is hidden
    And Nelim's Sanctuary: the floor of the sanctuary "bare-clearing" is bared
    And Nelim's Sanctuary: I am at the sanctuary "bare-clearing"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: the temperature of the map is 18 degrees
    And Nelim's Pickle Tools: I let 2560 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I place the decor "Campfire" at (193, 152)
    And Nelim's Pickle Tools: the decor "Campfire" at (193, 152) is lit
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (193, 148)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (193, 148) is lit
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (193, 156)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (193, 156) is lit
    And Nelim's Pickle Tools: I place the decor "Stool" at (191, 153)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CollarShirt" dyed rgb (24, 74, 84)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (16, 52, 60)
    And Nelim's Pickle Tools: 3 adult animals of kind "Chalicotherium" are spawned around (199, 152)
    And Nelim's Pickle Tools: the animal "coat-1" is given coat -1
    And Nelim's Pickle Tools: the animal "coat-2" is given coat 1
    And Nelim's Pickle Tools: the animal "coat-3" is given coat 4
    And Nelim's Pickle Tools: the animal "coat-1" lies at (197, 150) facing South
    And Nelim's Pickle Tools: the animal "coat-2" lies at (200, 154) facing West
    And Nelim's Pickle Tools: the animal "coat-3" stands at (203, 152) facing West
    And Nelim's Pickle Tools: "coat-3" is forced to walk to (197, 152)
    And Nelim's Pickle Tools: "Nelim" sits on the building "Stool" at (191, 153)
    And Nelim's Pickle Tools: time is paused for the capture
    And Nelim's Pickle Tools: I advance the paused game by exactly 40 ticks
    When Nelim's Pickle Tools: I frame the cells (187, 147) to (204, 157) filling 90 percent of the screen
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And Nelim's Pickle Tools: "Nelim" face kit is "neutral"
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Nelim's Pickle Tools: "Nelim" hairstyle is "RI_HairStyle_FemaleBun"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (58, 36, 28)
    And Nelim's Pickle Tools: "Nelim" facial expression is "normal+blink"
    And Nelim's Pickle Tools: I let 5 frames pass
    And I take a screenshot "gallery-4-chalicotherium"

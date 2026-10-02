# Gallery, staged: story and draft scenarios (not yet playable)

Rule of 2026-10-02: every gallery capture is a staged photograph, never a default scene. The first gallery written here
(`08-gallery.feature`, run 746b) only spawned animals around the map centre and was withdrawn: it staged nothing, and it
could place only 2 large animals within the fixed four-cell radius. This draft replaces it. It stays a draft, not a
`.feature`, because four steps it needs do not exist yet (asked of Nelim's Pickle Tools, listed at the end); `Check-Steps.ps1`
would reject it, and an `@wip` would not be a passed scenario.

## The story

*The keeper's evening.* At dusk a keeper of the dry plains comes back to her camp, and the herd has followed her in. Each
image is one species of the herd stepping into the lamplight, in the same camp, so the four read as one evening and not as
four test maps.

## The common set (one camp, rebuilt for each image)

On open ground of `test-colony` (free 9 x 9 squares such as the one at (30, 30): `PickleTools/docs/FIXTURES.md`):

- floor: `PackedDirt` over the whole 15 x 11 clearing (a bare, trodden camp, so the coats are the only saturated thing);
- light and warmth: a `Campfire` at the west edge of the frame, a `TorchLamp` each side, so the animals are lit from the side;
- life: two `PlantPot` and a `Plant_Daylily`, a `Plant_Bush` behind, a `Shelf` of the keeper's things at the north edge;
- placed with `Nelim's Pickle Tools: I place the decor ...` and `I lay the floor ...`, then **removed** with `the decor is removed`
  before the next image, so every image starts from the same ground.

## The keeper (in every image, small, at the edge)

A colonist `keeper`, kind `Colonist`, always the same person so the series holds together. She is a scale and a story, not the
subject: she stands at the frame's edge, never in front of the animals.

- body: `Thin` body type and a plain face, chosen once, never random;
- hair: dark `rgb (40, 32, 28)` so it does not compete with the coats; hairstyle `Ponytail` (to check against `HairDef` names at the first run);
- clothes: a collar shirt and trousers dyed deep teal `rgb (24, 74, 84)`: the complement of the rust, ochre and brown coats, so
  the coats stand out against her and not the reverse;
- no tattoos: nothing in this story gives them a meaning.

## The four images

Order is the order they are shown on the Workshop page. The first is the most telling, not the prettiest.

1. **Two mammoths in two coats** (`WoollyMammoth`, adult, 2): the animal everyone knows, and the one the original shows. The most
   readable pair of different coats; the keeper at the far left.
2. **Three Enhydriodon** (`Enhydriodon`, adult, 3): the most generous small kind, four extra coats at 0.8. The point is the variety.
3. **Three giant scorpions** (`Pulmonoscorpius`, adult, 3): not a mammal; shows the pack is not only mammals.
4. **Two Chalicotherium** (`Chalicotherium`, adult, 2): the kind with the most coats, five extra.

Counts are what the close-spawn step could place (2 large, 3 small within four cells); no coat assertion on purpose, because 2 or
3 animals at a chance of 0.6 to 0.8 can show no extra coat, and the reviewer says so on the image instead.

## What the scenarios look like (steps marked NEW do not exist yet)

```gherkin
Background:
  Given the save "test-colony" is loaded

@review @gallery
Scenario: gallery 1, two mammoths in the lamplight
  Given Nelim's Pickle Tools: I lay the floor "PackedDirt" from (24, 24) to (38, 34)
  And Nelim's Pickle Tools: I place the decor "Campfire" at (24, 29)
  And Nelim's Pickle Tools: I place the decor "TorchLamp" at (25, 25)
  And Nelim's Pickle Tools: I place the decor "TorchLamp" at (37, 25)
  And Nelim's Pickle Tools: I place the decor "PlantPot" at (26, 33)
  And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (36, 33)
  And Nelim's Pickle Tools: I place the decor "Shelf" at (30, 34)
  And Nelim's Pickle Tools: a colonist "keeper" of kind "Colonist" exists
  And Nelim's Pickle Tools: "keeper" body type is Thin
  And Nelim's Pickle Tools: "keeper" hair colour is rgb (40, 32, 28)
  And Nelim's Pickle Tools: "keeper" wears "Apparel_CollarShirt" dyed rgb (24, 74, 84)          # NEW
  And Nelim's Pickle Tools: "keeper" stands at (25, 31)                                          # NEW
  And Nelim's Pickle Tools: 2 adult animals of kind "WoollyMammoth" are spawned around (31, 29)  # NEW
  When Nelim's Pickle Tools: developer mode is turned off for the capture
  And Nelim's Pickle Tools: I frame the cell (30, 30) at zoom 9                                  # NEW
  And I take a screenshot "gallery-1-mammoths"
  And Nelim's Pickle Tools: the decor is removed
```

Images 2 to 4 are the same set with their own animals and file names.

## Asked of Nelim's Pickle Tools

1. `{int} adult animals of kind {string} are spawned around ({int}, {int})`: the close-spawn step, centred on a cell instead of the
   map centre, with room for large animals (the fixed four-cell radius around the map centre placed 2 of 3 mammoths).
2. `I frame the cell ({int}, {int}) at zoom {int}`: the frame step knows only the kind's own animals, and a staged shot has to
   include the set.
3. `{string} wears {string}`, or a variant that also dyes it: `the {string} worn by {string} is dyed` fails if the colonist
   does not wear the garment, and nothing gives her one.
4. `{string} stands at ({int}, {int})`: a colonist moved to a cell, so the keeper is where the story needs her.

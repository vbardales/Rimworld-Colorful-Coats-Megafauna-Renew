# Publication: Colorful Coats - Megafauna! Renew (unofficial)

What the Workshop page asks for and the repository holds nowhere else. Item **3806766441** (created privately during the 0.1.0 send,
2026-09-28). Version 1.0.0 was sent on 2026-11-17 and the item is public.

## Steam description

```markdown
**UNOFFICIAL.** This mod is published without the original author's explicit consent. If the original author contacts me to request its removal, I undertake to take it down promptly.

Coat variations for 26 of Megafauna's prehistoric animals, so a mammoth herd is a herd of individuals rather than 12 copies of one mammoth. Between two and five extra coats each, 67 in all, and between 60% and 80% of animals get one - the rest keep the coat Spino drew.

Texture patch only. No DLC, no Harmony, no assembly, no def of its own - a single XML patch and 201 textures. A coat is worked out from each animal's saved ID when it is drawn and stored nowhere, so animals already in a save should change coat when this is added and change back when it is removed. That follows from the game's code and has not been seen in game; use a backup when testing.

## WHAT IS COVERED

Andrewsarchus, Arthropleura, Castoroides, Chalicotherium, Daeodon, Deinotherium, Dinocrocuta, Diprotodon, Doedicurus, Elasmotherium, Enhydriodon, Gomphotaria, Josephoartigasia, Macrauchenia, Megalania, Paraceratherium, Platybelodon, Procoptodon, Pulmonoscorpius, Purussaurus, Sivatherium, Smilodon, Titanis, Uintatherium, Woolly mammoth and Zygolophodon.

The most generous are the Chalicotherium with five extra coats, and the Enhydriodon and the Purussaurus with four.

I am not the author of this mod. The textures and the whole idea are purpleyam's - all I did was the work needed to run it on the latest RimWorld version. Credit goes to them; mistakes in the port are mine.

Original mod: https://steamcommunity.com/sharedfiles/filedetails/?id=2560113727 - declares 1.4 and nothing further.

## WHAT CHANGED IN THE PORT

The recorded compatibility inspection found alternateGraphics and alternateGraphicChance on PawnKindDef in the latest RimWorld version. Static checks confirm that all 26 targets in the installed Megafauna definitions exist and that all texture paths resolve. Actual coat appearance still needs validation in game. Two packaging and patch changes were made:

- Each of the 26 operations now reports success whether or not it found its animal. They sit in one PatchOperationSequence, and a sequence stops at the first operation that fails - so if a future release of Megafauna ever renamed one animal, every animal listed after it would have quietly lost its coats too. purpleyam already wrote it this way in the Vanilla Animals Expanded mod; this brings this one into line.
- The four large screenshots left in the About folder were removed. RimWorld reads Preview.png and ModIcon.png and nothing else in there, and those four were 7.6 MB of the mod's 13 MB.

The colours, the chances and the 201 textures are untouched.

## CREDIT AND REMOVAL

The source audit of 2026-09-12 found no explicit licence, redistribution permission or prohibition in the inspected original files, Steam description and comments, or author profile. No source repository was linked in that material. The original does not declare support for the latest RimWorld version, which meets this project's definition of abandoned and supports its public/silent classification. Redistribution permission remains unverified; credit and removal on request do not grant permission. If purpleyam would rather this port did not exist, say so and it comes down: no argument, no delay.

## IF I GO QUIET

If I do not answer within a reasonable time after being contacted, anyone may freely update this or any other of my mods, including publishing a continuation of it. All credit must be preserved. This offer covers my contributions only and does not grant rights to third-party material.

## AI-GENERATED

The port work was done with AI assistants, under human direction: Claude (by Anthropic) and Codex (by OpenAI) wrote and checked the patch, the test scripts and the documents; I directed and reviewed them. Static checks pass and an automated in-game suite has played most scenarios; no person has yet checked how the coats look in game, nor tried adding or removing the mod on an existing save.

## THANKS

[purpleyam](https://steamcommunity.com/sharedfiles/filedetails/?id=2560113727) for the coats and the whole idea. Spino for [Megafauna](https://steamcommunity.com/sharedfiles/filedetails/?id=1055485938), the animals and their base textures. For development only, never a dependency of this mod: [Pickle](https://steamcommunity.com/sharedfiles/filedetails/?id=3791648678), [RimLogging](https://steamcommunity.com/sharedfiles/filedetails/?id=3733484696), [Harmony](https://steamcommunity.com/sharedfiles/filedetails/?id=2009463077) (which Pickle needs) and PickleTools.

See ATTRIBUTION.md and LICENSE in the source repository for what was taken and what the MIT grant covers.
[Source code on GitHub](https://github.com/vbardales/Rimworld-Colorful-Coats-Megafauna-Renew)
```

The block above is generated from `Mod/About/About.xml` (BBCode there, Markdown here) and must stay in step with it. It ends, after the
credits, with the `Source code on GitHub` link to the repository, which is also the `<url>` field.

## Gallery order

Steam shows the first image large, so the most telling goes first, not the prettiest. All eight are staged captures of one story
(shotlist v4: Nelim's evening walk, then the breakfast round of the herd the next morning, told in the header of
`Tests/Pickle/Mod/Pickle/Features/08-gallery.feature`), taken in the Sanctuary pass (`-DepMap wsl-deps.gallery.map -Filter '@gallery'`).
Each capture is opened by the session and scored before it is kept; all eight were accepted by the owner on 2026-11-17 (shots 3, 5 and 6 were reshot in v5.2). Order:

1. `1-mammoths`: three mammoths in three coats, the animal everyone knows and the one the original shows.
2. `2-enhydriodon`: three Enhydriodon, the small kind with the most variety.
3. `3-scorpions`: three giant scorpions, not a mammal.
4. `4-chalicotherium`: three Chalicotherium, the kind with the most coats.
5. `5-enclosure`: six great browsers at the enclosure, one coat each.
6. `6-exhibition`: six strange grazers on the grass.
7. `7-rice-paddy`: five predators at the rice paddy.
8. `8-calm-zone`: five animals resting at the calm zone, the closing image.

`Art/Gallery/0-preview.png` (a byte-identical copy of `Mod/About/Preview.png`) stays first in the folder; the captures follow as `1-, 2-...`
Each image is to be opened by a person before upload: a green capture scenario does not prove the picture shows anything.

## Gallery subtitles

One line of English at the bottom of each scene without an interface window, laid over the image like a film subtitle
(`GALLERY.md`, "Sous-titres"). The story (shotlist v4): Nelim's evening walk (18:00 to 19:00), then the breakfast round of the herd the
next morning (06:30 to 09:30). `0-preview.png` (the Preview) has no subtitle. The clean original is in `Art/Gallery-clean/`, the
subtitled image goes in `Art/Gallery/`, both under 2 MB. A line changes here first, then the tool is replayed on the clean original.
**Status 2026-11-17 (v5.2): all 8 subtitles burned in. 1, 2, 4, 7 and 8 accepted by the owner (2026-11-15); 3, 5 and 6 reshot (ticket 4466) and accepted by her on 2026-11-17, so all eight captures and subtitles are accepted. 6 is cropped to 1600x1080 (map edge on the right).**

| Index | File | Line |
|---|---|---|
| 1 | `1-mammoths.jpg` | Nelim brings wood to the fire. |
| 2 | `2-enhydriodon.jpg` | Nelim feeds the otters. |
| 3 | `3-scorpions.jpg` | Nelim feeds the scorpions. |
| 4 | `4-chalicotherium.jpg` | Nelim sits by the fire while the herd settles. |
| 5 | `5-enclosure.jpg` | Breakfast for the great browsers. |
| 6 | `6-exhibition.jpg` | Breakfast for the strange grazers. |
| 7 | `7-rice-paddy.jpg` | Breakfast for the hunters. |
| 8 | `8-calm-zone.jpg` | Breakfast is over. The herd rests around Nelim. |

## Dependencies and DLC

- Required: **Megafauna** (`Spino.Megafauna`, 1055485938). The patch targets 26 of its animals and carries no guard, so a player without it gets
  nothing; a hard dependency is right (`modDependencies` in `About.xml`, checked in the sources, not in the game's reaction to it).
- `loadAfter`: Megafauna only. No optional integration, no DLC referenced, no Harmony, no assembly.
- Incompatible: purpleyam's original (`purpleyam.colorfulcoats.spinomegafauna`, 2560113727), declared in `incompatibleWith`. With both loaded the
  coat lists add up (6 alternate graphics on the mammoth, confirmed by Pickle at e824ec2), nothing is logged.
- `supportedVersions`: 1.6. No `LoadFolders.xml`.

## Adult content

None. No textures of a body, no text, nothing to declare. The answers on the Workshop form: not adult.

## Release notes (Steam)

The first line carries only the version (`[b]x.y.z[/b]`): the CI refuses a note whose first line does not. Sent before: `[b]0.1.0[/b]`, the
creation of the item (first send, private). Then `[b]1.0.0[/b]`, sent on 2026-11-17 (CI run 44085718942), the first public release; the note that went out (a BBCode note drafted from the `[1.0.0]` section of `CHANGELOG.md`: `[b]version[/b]`, a `[list]`, a `[url]` to the changelog; AUDIT.md 11.i):

### 1.0.0

```
[b]1.0.0[/b]
[list]
[*] First release: a port of Colorful Coats - Megafauna! by purpleyam to the latest RimWorld version.
[*] Coat variations for 26 of Megafauna's animals, 67 coats in all, 201 textures, unchanged from the original.
[*] Each of the 26 patch operations now reports success even if its animal is missing, so one renamed animal can no longer cost the others their coats.
[*] Checked by static scripts and an automated in-game suite; how the coats look on an existing save has not been seen in game yet.
[/list]
[url=https://github.com/vbardales/Rimworld-Colorful-Coats-Megafauna-Renew/blob/main/CHANGELOG.md]Full changelog on GitHub[/url]
```
## Thank-you comments (one per page, after the item is public)

Register: `WORKSHOP_COMMENTS.md`, keyed by the recipient's Workshop id. Harmony (2009463077), RimLogging (3733484696) and Pickle are already
`posted`: only this mod is added to their `Covers` column, nothing is `posted`. PickleTools (3806142401) is the owner's own project: `not_applicable`. **Missing, to draft and post by the owner under her own account, after reading the last comments of each page:**

| Recipient | Id | State |
|---|---|---|
| Megafauna | 1055485938 | drafted, not `posted` |
| Colorful Coats - Megafauna! (purpleyam's original) | 2560113727 | drafted, not `posted` |
| No Version Warning (Mlie) | 2599504692 | drafted, not `posted` (owner order, 2026-11-17) |

Megafauna's page is the author's reach for the base textures; the original's page is the only way purpleyam can reach the owner. The original's
page also says the mod declares 1.4 and nothing further, and credits Spino. **To verify on the pages before posting:** who maintains Megafauna for
the latest RimWorld version today (the source for the latest RimWorld version is `juanosarg/Megafauna`), because a mod that was taken over credits both people (`PUBLISHING.md`).

Draft, Megafauna (voice to adjust by the owner):

```text
Megafauna's mammoths always came in one coat, so a herd looked like twelve copies of one animal :) I patched in purpleyam's old coats for 26 of your animals, with a link back here: [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806766441]Colorful Coats - Megafauna! Renew[/url]. Thanks for the animals and the textures xD
```

Draft, purpleyam's original:

```text
Your coats for the Megafauna animals still look good on the latest RimWorld version, so I ported them (mammoth to Zygolophodon, 67 coats): [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806766441]Colorful Coats - Megafauna! Renew[/url]. It says in big letters it's not yours, credits you first, and comes down the day you ask. Thank you for the idea :)
```

Draft, No Version Warning (its fix list already carries purpleyam's id 2560113727; our Renew declares its own version and needs nothing from it):

```text
No Version Warning already carries purpleyam's old Colorful Coats - Megafauna! (2560113727) in its fix list. I ported that mod to the latest RimWorld version as [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806766441]Colorful Coats - Megafauna! Renew[/url]; it declares its own version, so players of the Renew need nothing from you. If you ever clean up the list, that is why. Thank you for the mod xD
```

The three drafts differ in opening, ending and joke; each is under 1,000 characters and carries one hidden link. Re-read side by side before posting.

## Use This Instead

One comment on the [Use This Instead](https://steamcommunity.com/sharedfiles/filedetails/?id=3396308787) page (Mlie), so players of the original are told about the Renew (`docs/USE_THIS_INSTEAD.md`):

```text
Colorful Coats - Megafauna! by purpleyam (2560113727, package purpleyam.colorfulcoats.spinomegafauna, RimWorld 1.2 to 1.4) can be replaced by [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806766441]Colorful Coats - Megafauna! Renew (unofficial)[/url] (3806766441, package nelim.colorfulcoats.megafauna, RimWorld 1.6), by Nelim. Same 26 animals and 67 coats, ported to the latest RimWorld version. The two cannot be loaded together. Original: [url=https://steamcommunity.com/sharedfiles/filedetails/?id=2560113727]Colorful Coats - Megafauna![/url]. Thank you for the mod xD
```

## After the send

- Commit About/PublishedFileId.txt immediately (already in the repository for the 0.1.0 item). Steam creates every item private and RimWorld never calls
  SetItemVisibility: the owner switches it public by hand, after subscribing to her own item.
- Update STATUS.md (stage) **before** a CI publish, not after.

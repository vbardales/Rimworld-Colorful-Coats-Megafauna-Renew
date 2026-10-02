# Publication — Colorful Coats - Megafauna! Renew (unofficial)

What the Workshop page asks for and the repository holds nowhere else. Item **3806766441** (created private by the 0.1.0 send,
2026-09-28). Nothing here has been sent.

## Steam description

```markdown
**UNOFFICIAL.** This mod is published without the original author's explicit consent. If the original author contacts me to request its removal, I undertake to take it down promptly.

Coat variations for 26 of Megafauna's prehistoric animals, so a mammoth herd is a herd of individuals rather than 12 copies of one mammoth. Between two and five extra coats each, 67 in all, and between 60% and 80% of animals get one - the rest keep the coat Spino drew.

Texture patch only. No DLC, no Harmony, no assembly, no def of its own - a single XML patch and 201 textures. A coat is worked out from each animal's saved id when it is drawn and stored nowhere, so animals already in a save should change coat when this is added and change back when it is removed. That follows from the game's code and has not been seen in game; use a backup when testing.

## WHAT IS COVERED

Andrewsarchus, Arthropleura, Castoroides, Chalicotherium, Daeodon, Deinotherium, Dinocrocuta, Diprotodon, Doedicurus, Elasmotherium, Enhydriodon, Gomphotaria, Josephoartigasia, Macrauchenia, Megalania, Paraceratherium, Platybelodon, Procoptodon, Pulmonoscorpius, Purussaurus, Sivatherium, Smilodon, Titanis, Uintatherium, Woolly mammoth and Zygolophodon.

The most generous are the Chalicotherium with five extra coats, and the Enhydriodon and the Purussaurus with four.

I am not the author of this mod. The textures and the whole idea are purpleyam's - all I did was the work needed to run it on 1.6. Credit goes to them; mistakes in the port are mine.

Original mod: https://steamcommunity.com/sharedfiles/filedetails/?id=2560113727 - declares 1.4 and nothing further.

## WHAT CHANGED IN THE PORT

The recorded compatibility inspection found alternateGraphics and alternateGraphicChance on PawnKindDef in RimWorld 1.6. Static checks confirm all 26 targets in the installed Megafauna 1.6 definitions and all texture paths. Actual coat appearance still needs validation in game. Two packaging and patch changes were made:

- Each of the 26 operations now reports success whether or not it found its animal. They sit in one PatchOperationSequence, and a sequence stops at the first operation that fails - so if a future release of Megafauna ever renamed one animal, every animal listed after it would have quietly lost its coats too. purpleyam already wrote it this way in the Vanilla Animals Expanded mod; this brings this one into line.
- The four large screenshots left in the About folder were removed. RimWorld reads Preview.png and ModIcon.png and nothing else in there, and those four were 7.6 MB of the mod's 13.

The colours, the chances and the 201 textures are untouched.

## CREDIT AND REMOVAL

The source audit of 2026-09-12 found no explicit licence, redistribution permission or prohibition in the inspected original files, Steam description and comments, or author profile. No source repository was linked in that material. The original does not declare RimWorld 1.6 support, which meets this project's definition of abandoned and supports its public/silent classification. Redistribution permission remains unverified; credit and removal on request do not grant permission. If purpleyam would rather this port did not exist, say so and it comes down: no argument, no delay.

## IF I GO QUIET

If I do not answer within a reasonable time after being contacted, anyone may freely update this or any other of my mods, including publishing a continuation of it. All credit must be preserved. This offer covers my contributions only and does not grant rights to third-party material.

## AI-GENERATED

The port work was done with AI assistants, under human direction: Claude (by Anthropic) and Codex (by OpenAI) wrote and checked the patch, the test scripts and the documents; I directed and reviewed them. Static checks pass and an automated in-game suite has played most scenarios; no person has yet checked how the coats look in game, nor tried adding or removing the mod on an existing save.

## THANKS

[purpleyam](https://steamcommunity.com/sharedfiles/filedetails/?id=2560113727) for the coats and the whole idea. Spino for [Megafauna](https://steamcommunity.com/sharedfiles/filedetails/?id=1055485938), the animals and their base textures. For development only, never a dependency of this mod: [Pickle](https://steamcommunity.com/sharedfiles/filedetails/?id=3791648678), [RimLogging](https://steamcommunity.com/sharedfiles/filedetails/?id=3733484696), [Harmony](https://steamcommunity.com/sharedfiles/filedetails/?id=2009463077) (which Pickle needs) and PickleTools.

See ATTRIBUTION.md and LICENSE in the source repository for what was taken and what the MIT grant covers.
[Source code on GitHub](https://github.com/vbardales/Rimworld-Colorful-Coats-Megafauna-Renew)
```

The block above is generated from Mod/About/About.xml (BBCode there, Markdown here) and must stay in step with it. It ends, after the
credits, with the Source code on GitHub link to the repository, which is also the <url> field.

## Gallery order

Steam shows the first image large, so the most telling goes first, not the prettiest. All four are staged captures of one story
(*The keeper's evening*, Tests/Pickle/gallery-draft.md) taken by Tests/Pickle/Mod/Pickle/Features/08-gallery.feature in the minimal pass
(-Filter '@gallery'). **None has been taken yet, and none has been opened and looked at.** Order, once they exist:

1. `gallery-1-mammoths`: two mammoths in two coats, the animal everyone knows and the one the original shows.
2. `gallery-2-enhydriodon`: three Enhydriodon, the small kind with the most variety.
3. `gallery-3-scorpions`: three giant scorpions, not a mammal.
4. `gallery-4-chalicotherium`: two Chalicotherium, the kind with the most coats.

Art/Gallery/0-preview.png (a byte-identical copy of Mod/About/Preview.png) stays first in the folder; the captures follow as 1-, 2-...
Each image is to be opened by a person before upload: a green capture scenario does not prove the picture shows anything.

## Dependencies and DLC

- Required: **Megafauna** (Spino.Megafauna, 1055485938). The patch targets 26 of its animals and carries no guard, so a player without it gets
  nothing; a hard dependency is right (modDependencies in About.xml, checked in the sources, not in the game's reaction to it).
- loadAfter: Megafauna only. No optional integration, no DLC referenced, no Harmony, no assembly.
- Incompatible: purpleyam's original (purpleyam.colorfulcoats.spinomegafauna, 2560113727), declared in incompatibleWith. With both loaded the
  coat lists add up (6 alternate graphics on the mammoth, confirmed by Pickle at e824ec2), nothing is logged.
- supportedVersions: 1.6. No LoadFolders.xml.

## Adult content

None. No textures of a body, no text, nothing to declare. The answers on the Workshop form: not adult.

## Release notes (Steam, 0.1.0 creation; 1.0.0 to come)

The first line carries only the version.

```
[b]0.1.0[/b]
First send, to create the item. Not tested by a person yet; private until switched by hand.
```

For 1.0.0: the ## [1.0.0] section of CHANGELOG.md once it is renumbered by the owner (the file already carries a [1.0.0] of 2026-09-05
from before this workflow).

## Thank-you comments (one per page, after the item is public)

Register: WORKSHOP_COMMENTS.md, keyed by the recipient's Workshop id. Harmony (2009463077), RimLogging (3733484696) and Pickle are already
posted: only this mod is added to their Covers column, nothing is posted. PickleTools (3806142401) is the owner's own project:

ot_applicable. **Missing, to draft and post by the owner under her own account, after reading the last comments of each page:**

| Recipient | Id | State |
|---|---|---|
| Megafauna | 1055485938 | drafted, not posted |
| Colorful Coats - Megafauna! (purpleyam's original) | 2560113727 | drafted, not posted |

Megafauna's page is the author's reach for the base textures; the original's page is the only way purpleyam can reach the owner. The original's
page also says the mod declares 1.4 and nothing further, and credits Spino. **To verify on the pages before posting:** who maintains Megafauna for
1.6 today (the 1.6 source is juanosarg/Megafauna), because a mod that was taken over credits both people (PUBLISHING.md).

Draft, Megafauna (voice to adjust by the owner):

```
Megafauna's mammoths always came in one coat, so a herd looked like twelve copies of one animal :) I patched in purpleyam's old coats for 26 of your animals, with a link back here: [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806766441]Colorful Coats - Megafauna! Renew[/url]. Thanks for the animals and the textures xD
```

Draft, purpleyam's original:

```
Your coats for the Megafauna animals still look good on 1.6, so I ported them (mammoth to Zygolophodon, 67 coats): [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806766441]Colorful Coats - Megafauna! Renew[/url]. It says in big letters it's not yours, credits you first, and comes down the day you ask. Thank you for the idea :)
```

The two drafts differ in opening, ending and joke; each is under 1,000 characters and carries one hidden link. Re-read side by side before posting.

## After the send

- Commit About/PublishedFileId.txt immediately (already in the repository for the 0.1.0 item). Steam creates every item private and RimWorld never calls
  SetItemVisibility: the owner switches it public by hand, after subscribing to her own item.
- Update STATUS.md (stage) **before** a CI publish, not after.

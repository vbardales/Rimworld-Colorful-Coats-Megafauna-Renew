<#
.SYNOPSIS
  Checks the three things about this mod that can be settled without starting the game.

.DESCRIPTION
  The shared checkers under the monorepo's scripts/ cover the general faults - unknown fields,
  unresolved types, dangling def references - and this mod passes all of them. What they cannot
  see is the only thing it actually does: hand 67 texture paths to 26 of another mod's animals.

  So, three checks, and each one is a question the game would otherwise answer by drawing nothing:

    1. Every texPath in the patch has its three rotation files shipped. RimWorld looks for
       <path>_east.png, _north.png and _south.png; west is mirrored from east and is not shipped.
       A missing file is one line in the log at load and an invisible animal afterwards.

    2. Every shipped texture is referenced by some texPath. An unreferenced file is dead weight in
       the Workshop upload, and more often it is a typo in the path that check 1 already caught
       from the other side.

    3. Every defName the patch aims at still exists in Megafauna, and none of them already carries
       alternateGraphics of its own. This is the check that expires: Megafauna is alive, and a
       renamed animal costs it its coats in complete silence, since every operation in the patch
       carries <success>Always</success>. See scenario A in TESTING.md.

  Check 3 is skipped rather than failed when Megafauna is not installed: the mod is not in this
  repository and its absence says nothing about this one.

  Not published - _tools/ sits outside Mod/, which is the only directory the Workshop uploader
  ever sees.

.EXAMPLE
  powershell -File _tools/Check-Coats.ps1
#>
param(
    [string]$ModPath   = (Join-Path $PSScriptRoot '..'),
    [string]$Megafauna = 'C:\Program Files (x86)\Steam\steamapps\workshop\content\294100\1055485938'
)

$ErrorActionPreference = 'Stop'

# Resolved, not joined as given. Check 2 measures a texture's full path against the length of
# $texRoot, and a $texRoot still carrying the `_tools\..` hop is longer than the path it is
# measuring into - which cuts the relative name short and reports all 201 textures as orphans.
$ModPath = (Resolve-Path $ModPath).Path

$patch    = Join-Path $ModPath 'Mod\Patches\ColorfulCoats_Megafauna.xml'
$texRoot  = Join-Path $ModPath 'Mod\Textures'
$rotations = 'east', 'north', 'south'
$problems = 0

[xml]$xml = Get-Content -Raw $patch

# One entry per animal: the defName the xpath selects, and the coats added to it.
$animals = foreach ($op in $xml.Patch.Operation.operations.li) {
    if ($op.xpath -notmatch 'defName\s*=\s*"([^"]+)"') { throw "xpath with no defName: $($op.xpath)" }
    [pscustomobject]@{
        DefName = $Matches[1]
        Chance  = [double]$op.value.alternateGraphicChance
        Coats   = @($op.value.alternateGraphics.li.texPath)
    }
}

$coats = $animals.Coats
Write-Host "$($animals.Count) animals, $($coats.Count) coats, $($coats.Count * $rotations.Count) textures expected."

# 1 - every path has its three rotations.
$missing = foreach ($c in $coats) {
    foreach ($r in $rotations) {
        $f = Join-Path $texRoot ("$c" + "_$r.png").Replace('/', '\')
        if (-not (Test-Path $f)) { "$c" + "_$r.png" }
    }
}
if ($missing) {
    $problems++
    Write-Host "-- $($missing.Count) texture(s) referenced and not shipped --"
    $missing | ForEach-Object { Write-Host "   $_" }
} else {
    Write-Host '-- every texPath has its three rotations --'
}

# 2 - and nothing shipped is unreferenced.
$wanted = [System.Collections.Generic.HashSet[string]]::new()
foreach ($c in $coats) { foreach ($r in $rotations) { [void]$wanted.Add(("$c" + "_$r.png").Replace('/', '\')) } }

$orphans = Get-ChildItem $texRoot -Recurse -Filter *.png |
    ForEach-Object { $_.FullName.Substring($texRoot.Length + 1) } |
    Where-Object { -not $wanted.Contains($_) }
if ($orphans) {
    $problems++
    Write-Host "-- $($orphans.Count) shipped texture(s) nothing references --"
    $orphans | ForEach-Object { Write-Host "   $_" }
} else {
    Write-Host '-- every shipped texture is referenced --'
}

# 3 - the animals are still called what the patch calls them.
if (-not (Test-Path $Megafauna)) {
    Write-Host "-- Megafauna not installed at $Megafauna, defName check skipped --"
} else {
    $defs = @{}
    foreach ($f in Get-ChildItem (Join-Path $Megafauna '1.6\Defs') -Recurse -Filter *.xml) {
        [xml]$d = Get-Content -Raw $f.FullName
        foreach ($k in $d.Defs.PawnKindDef) {
            if ($k.defName) { $defs[$k.defName] = $k }
        }
    }
    Write-Host "Megafauna 1.6: $($defs.Count) PawnKindDef read."

    $gone = $animals.DefName | Where-Object { -not $defs.ContainsKey($_) }
    if ($gone) {
        $problems++
        Write-Host "-- $($gone.Count) defName(s) the patch aims at and Megafauna no longer has --"
        $gone | ForEach-Object { Write-Host "   $_" }
    } else {
        Write-Host '-- all 26 defNames still exist in Megafauna --'
    }

    $taken = $animals.DefName | Where-Object { $defs.ContainsKey($_) -and $defs[$_].alternateGraphics }
    if ($taken) {
        $problems++
        Write-Host "-- $($taken.Count) animal(s) where Megafauna already defines alternateGraphics --"
        $taken | ForEach-Object { Write-Host "   $_" }
    } else {
        Write-Host '-- Megafauna defines alternateGraphics on none of them --'
    }
}

Write-Host ''
if ($problems) { Write-Host "$problems check(s) failed."; exit 1 }
Write-Host 'All checks passed. What is left is scenario A in TESTING.md, which needs the game.'

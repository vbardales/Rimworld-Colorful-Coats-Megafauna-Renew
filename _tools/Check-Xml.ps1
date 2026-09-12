<#
.SYNOPSIS
  Validates this mod's XML metadata and patch contract without the former monorepo.
.DESCRIPTION
  Static checks only: this does not run RimWorld's patch engine or render animals.
#>
param([string]$ModPath = (Join-Path $PSScriptRoot '..'))
$ErrorActionPreference = 'Stop'
$ModPath = (Resolve-Path $ModPath).Path
function Assert-Valid($Condition, [string]$Message) {
    if (-not $Condition) { throw $Message }
}

$files = @(Get-ChildItem (Join-Path $ModPath 'Mod') -Recurse -Filter *.xml)
foreach ($file in $files) {
    $document = New-Object System.Xml.XmlDocument
    $document.Load($file.FullName)
}
[xml]$about = Get-Content -Raw (Join-Path $ModPath 'Mod/About/About.xml')
$meta = $about.ModMetaData
$url = 'https://github.com/vbardales/Rimworld-Colorful-Coats-Megafauna-Renew'
Assert-Valid ($meta.packageId -ceq 'nelim.colorfulcoats.megafaunarenew') 'Unexpected packageId.'
Assert-Valid ($meta.name -ceq 'Colorful Coats - Megafauna! Renew (unofficial)') 'Unexpected mod title.'
Assert-Valid ($meta.url -ceq $url) 'Wrong source URL.'
Assert-Valid ($meta.description.Contains($url)) 'Description lacks the GitHub URL.'
Assert-Valid (@($meta.supportedVersions.li) -contains '1.6') 'RimWorld 1.6 is not declared.'
Assert-Valid (@($meta.modDependencies.li.packageId) -contains 'Spino.Megafauna') 'Megafauna dependency missing.'
Assert-Valid (@($meta.loadAfter.li) -contains 'Spino.Megafauna') 'Megafauna load order missing.'
Assert-Valid (@($meta.incompatibleWith.li) -contains 'purpleyam.colorfulcoats.spinomegafauna') 'Original mod incompatibility missing.'

[xml]$patch = Get-Content -Raw (Join-Path $ModPath 'Mod/Patches/ColorfulCoats_Megafauna.xml')
$sequences = @($patch.SelectNodes('/Patch/Operation'))
Assert-Valid ($sequences.Count -eq 1) 'Expected one patch sequence.'
$sequence = $sequences[0]
Assert-Valid ($sequence.Class -ceq 'PatchOperationSequence') 'Unexpected sequence class.'
Assert-Valid ($sequence.success -ceq 'Always') 'Sequence success flag missing.'
$operations = @($sequence.operations.li)
Assert-Valid ($operations.Count -eq 26) 'Expected 26 animal operations.'
$targets = [System.Collections.Generic.HashSet[string]]::new()
$paths = [System.Collections.Generic.HashSet[string]]::new()
foreach ($op in $operations) {
    Assert-Valid ($op.Class -ceq 'PatchOperationAdd') 'Unexpected operation class.'
    Assert-Valid ($op.success -ceq 'Always') 'An animal operation lost its success flag.'
    $xpath = [string]$op.xpath
    Assert-Valid ($xpath -cmatch '^/Defs/PawnKindDef\[defName = "([^"]+)"\]$') "Unexpected XPath: $xpath"
    $target = $Matches[1]
    Assert-Valid ($targets.Add($target)) "Duplicate animal: $target"
    # Exercise the actual XPath rather than checking only its spelling.
    $fixture = New-Object System.Xml.XmlDocument
    $fixture.LoadXml('<Defs><PawnKindDef><defName /></PawnKindDef></Defs>')
    $fixture.DocumentElement.FirstChild.FirstChild.InnerText = $target
    Assert-Valid ($fixture.SelectNodes($xpath).Count -eq 1) "XPath does not select its animal: $target"
    $fields = @($op.value.ChildNodes | Where-Object NodeType -eq Element)
    Assert-Valid ($fields.Count -eq 2 -and @($fields.Name) -contains 'alternateGraphics' -and @($fields.Name) -contains 'alternateGraphicChance') "Unexpected patch fields: $target"
    $chance = [double]::Parse([string]$op.value.alternateGraphicChance, [Globalization.CultureInfo]::InvariantCulture)
    Assert-Valid ($chance -ge 0 -and $chance -le 1) "Invalid probability: $target"
    $coats = @($op.value.alternateGraphics.li)
    Assert-Valid ($coats.Count -ge 2 -and $coats.Count -le 5) "Unexpected coat count: $target"
    foreach ($coat in $coats) {
        $children = @($coat.ChildNodes | Where-Object NodeType -eq Element)
        Assert-Valid ($children.Count -eq 1 -and $children[0].Name -ceq 'texPath') "Unexpected coat field: $target"
        $path = [string]$coat.texPath
        Assert-Valid ($path.StartsWith('Things/Pawn/Animal/') -and -not $path.Contains('..')) "Invalid texture path: $path"
        Assert-Valid ($paths.Add($path)) "Duplicate coat: $path"
    }
}
Assert-Valid ($paths.Count -eq 67) 'Expected 67 unique coats.'
Write-Host "PASS: $($files.Count) XML files parsed; metadata, 26 operations, XPath selectors, success flags, probabilities and 67 coats validated."

param([Parameter(Mandatory)][string]$ModRoot, [string]$SharedDir)

# Own values and facts of this mod's content (metadata, the 26 patch operations, their fields, the 67 coats): one consumer,
# nothing shareable. Tests/Test-Mod.ps1 (generated) runs it after the shared checks (Check-Textures: rotation files and
# orphans; Check-PatchTargets: defNames exist in Megafauna; Check-AlternateGraphics: list structure). Prints findings, exit 1 on any.
$ErrorActionPreference = 'Stop'
$ModPath = Join-Path (Resolve-Path -LiteralPath $ModRoot).Path 'Mod'
$script:findings = @()

function It([string]$name, [scriptblock]$body) {
    try { $problems = @(& $body | Where-Object { $_ }) } catch { $problems = @("threw: $($_.Exception.GetBaseException().Message)") }
    foreach ($p in $problems) { $script:findings += "[$name] $p" }
}

$url = 'https://github.com/vbardales/Rimworld-Colorful-Coats-Megafauna-Renew'
It 'Metadata, dependency and incompatibility' {
    [xml]$about = Get-Content -Raw -Encoding UTF8 (Join-Path $ModPath 'About/About.xml')
    $meta = $about.ModMetaData
    if ($meta.packageId -cne 'nelim.colorfulcoats.megafauna') { 'Unexpected packageId' }
    if ($meta.name -cne 'Colorful Coats - Megafauna! Renew (unofficial)') { 'Unexpected mod title' }
    if ($meta.url -cne $url) { 'Wrong source URL' }
    if (-not $meta.description.Contains($url)) { 'Description lacks the GitHub URL' }
    if (@($meta.supportedVersions.li) -notcontains '1.6') { 'RimWorld 1.6 is not declared' }
    if (@($meta.modDependencies.li.packageId) -notcontains 'Spino.Megafauna') { 'Megafauna dependency missing' }
    if (@($meta.loadAfter.li) -notcontains 'Spino.Megafauna') { 'Megafauna load order missing' }
    if (@($meta.incompatibleWith.li) -notcontains 'purpleyam.colorfulcoats.spinomegafauna') { 'Original mod incompatibility missing' }
}

It 'Patch: 26 animal operations, 67 unique coats' {
    [xml]$patch = Get-Content -Raw -Encoding UTF8 (Join-Path $ModPath 'Patches/ColorfulCoats_Megafauna.xml')
    $sequences = @($patch.SelectNodes('/Patch/Operation'))
    if ($sequences.Count -ne 1) { 'Expected one patch sequence'; return }
    $sequence = $sequences[0]
    if ($sequence.Class -cne 'PatchOperationSequence') { 'Unexpected sequence class' }
    if ($sequence.success -cne 'Always') { 'Sequence success flag missing' }
    $operations = @($sequence.operations.li)
    if ($operations.Count -ne 26) { "Expected 26 animal operations, found $($operations.Count)" }
    $targets = [System.Collections.Generic.HashSet[string]]::new()
    $paths = [System.Collections.Generic.HashSet[string]]::new()
    foreach ($op in $operations) {
        if ($op.Class -cne 'PatchOperationAdd') { 'Unexpected operation class' }
        if ($op.success -cne 'Always') { 'An animal operation lost its success flag' }
        $xpath = [string]$op.xpath
        if ($xpath -cnotmatch '^/Defs/PawnKindDef\[defName = "([^"]+)"\]$') { "Unexpected XPath: $xpath"; continue }
        $target = $Matches[1]
        if (-not $targets.Add($target)) { "Duplicate animal: $target" }
        # Run the actual XPath on a fixture, not only check its spelling.
        $fixture = New-Object System.Xml.XmlDocument
        $fixture.LoadXml('<Defs><PawnKindDef><defName /></PawnKindDef></Defs>')
        $fixture.DocumentElement.FirstChild.FirstChild.InnerText = $target
        if ($fixture.SelectNodes($xpath).Count -ne 1) { "XPath does not select its animal: $target" }
        $fields = @($op.value.ChildNodes | Where-Object NodeType -eq Element)
        if (-not ($fields.Count -eq 2 -and @($fields.Name) -contains 'alternateGraphics' -and @($fields.Name) -contains 'alternateGraphicChance')) { "Unexpected patch fields: $target" }
        $chance = [double]::Parse([string]$op.value.alternateGraphicChance, [Globalization.CultureInfo]::InvariantCulture)
        if ($chance -lt 0 -or $chance -gt 1) { "Invalid probability: $target" }
        $coats = @($op.value.alternateGraphics.li)
        if ($coats.Count -lt 2 -or $coats.Count -gt 5) { "Unexpected coat count: $target" }
        foreach ($coat in $coats) {
            $children = @($coat.ChildNodes | Where-Object NodeType -eq Element)
            if (-not ($children.Count -eq 1 -and $children[0].Name -ceq 'texPath')) { "Unexpected coat field: $target"; continue }
            $path = [string]$coat.texPath
            if (-not $path.StartsWith('Things/Pawn/Animal/') -or $path.Contains('..')) { "Invalid texture path: $path" }
            if (-not $paths.Add($path)) { "Duplicate coat: $path" }
        }
    }
    if ($paths.Count -ne 67) { "Expected 67 unique coats, found $($paths.Count)" }
}

if ($script:findings.Count) { $script:findings | ForEach-Object { Write-Host $_ }; exit 1 }
Write-Host 'PASS: metadata, 26 operations, XPath selectors, success flags, probabilities and 67 coats.'

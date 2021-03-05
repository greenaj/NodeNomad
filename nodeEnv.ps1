param (
    [Parameter(Mandatory=$true)]
    [string]$Version
)

$nodeParentDir = $PSScriptRoot
$nodeParentDirFile = Join-Path -Path $PSScriptRoot -ChildPath "node-parent-dir.txt"
if (Test-Path $nodeParentDirFile -PathType Leaf) {
    $nodeParentDir = Resolve-Path -Path $(Join-Path -Path $nodeParentDir -ChildPath $(Get-Content $nodeParentDirFile -First 1))
}

$nodeSubDir = "node-v$($Version)-win-x64"
$thePath = Join-Path -Path $nodeParentDir -ChildPath $nodeSubDir
$env:Path += ";$thePath"
$env:NODE_HOME = $thePath

$Host.UI.RawUI.WindowTitle = "Node $Version Shell"

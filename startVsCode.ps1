$vsCodeHome = Join-Path -Path $env:LocalAppData -ChildPath "Programs\Microsoft VS Code"

$versionFile = Join-Path -Path $PSScriptRoot -ChildPath "node-version.txt"

if (Test-Path $versionFile -PathType Leaf) {
	$nodeVersion = Get-Content $versionFile -First 1
	. "$PSScriptRoot\nodeEnv.ps1" $nodeVersion
}

$startInfo = New-Object System.Diagnostics.ProcessStartInfo
$startInfo.FileName = "cmd.exe"
$startInfo.Arguments = "/c", "start", "`"`"", "`"$(Join-Path -Path $vsCodeHome -ChildPath 'code.exe')`""

$process = New-Object System.Diagnostics.Process
$process.StartInfo = $startInfo
[void]$process.Start()



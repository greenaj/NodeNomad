$local:versionFile = Join-Path -Path $PSScriptRoot -ChildPath "node-version.txt"
$local:nodeVersion = Get-Content $local:versionFile -First 1
. "$PSScriptRoot\nodeEnv.ps1" $local:nodeVersion

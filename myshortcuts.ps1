$WshShell = New-Object -comObject WScript.Shell
$PathToPws = Join-Path -Path $PsHome -ChildPath "powershell.exe"
$PathToRunCon = Join-Path -Path $PSScriptRoot -ChildPath "nodePw.ps1"
$PathToRunVS = Join-Path -Path $PSScriptRoot -ChildPath "startVsCode.ps1"

$Shortcut = $WshShell.CreateShortcut($(Join-Path -Path $PSScriptRoot -ChildPath "node_console.lnk"))
$Shortcut.TargetPath = $($PathToPws)
$Shortcut.Arguments = "-NoExit ""$PathToRunCon"""
$Shortcut.WorkingDirectory = $PSScriptRoot
$Shortcut.Save()

$Shortcut = $WshShell.CreateShortcut($(Join-Path -Path $PSScriptRoot -ChildPath "node_vscode.lnk"))
$Shortcut.TargetPath = $($PathToPws)
$Shortcut.Arguments = """$PathToRunVS"""
$Shortcut.WorkingDirectory = $PSScriptRoot
$Shortcut.Save()

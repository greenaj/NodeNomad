$shell = New-Object -ComObject "Shell.Application"
$shellFolder = $shell.Namespace($env:NODE_HOME)

foreach ($f in @("npm", "npm.cmd", "npx", "npx.cmd")) {
    $shellItem = $shellFolder.ParseName($f)
    $shellItem.InvokeVerb("delete")	
}

$nodeModules = Join-Path -Path $env:NODE_HOME -ChildPath "node_modules"
$npmFolder = Join-Path -Path $nodeModules -ChildPath "npm"
$npmFolder2 = Join-Path -Path $nodeModules -ChildPath "npm2"

Rename-Item $npmFolder $npmFolder2
$npmCli = Join-Path -Path $npmFolder2 -ChildPath "bin\npm-cli.js"
node $npmCli i -g npm@latest

$shellNodeModules = $shell.Namespace($nodeModules)
$shellItem = $shellNodeModules.ParseName("npm2")
$shellItem.InvokeVerb("delete")

# NodeNomad

**Node On Windows** *- it doesn't have to suck*

- Select a folder in which to unzip your binary 64 bit Windows Node binary distributions.
- Unzip NodeNomad zip file into the folder of your desires or just use the folder where you unzip your Node binaries.
- Follow instructions for setting things up.
- No installs to run, no PowerShell modules to install, no global symlinks to set, to shenanigans with the Windows Registry. No committments.
- Have fun.

If you are using the 32 bit Node distribution on Windows, what are you doing with that? If this is the case either:
  1. You have 64 bit Windows; use the 64 bit Node, grow up and arise out of the 32 bits wasteland.
  2. You are trapped on 32 bit Windows. Buy a [Raspberry PI](https://www.raspberrypi.org/products/) and start developing on that for updating professional skills and keeping current. Read here no further as you use *nvm* or other Linux based Node version manager.

## Setup

### Node Extract Directory

This is the folder you choose to download Node Windows binary distributions. These are just .zip files. Remember, no installers. To find these click the *Other Downloads* link under the *LTS* or *Current* download buttons on [Node.js](https://nodejs.org/). You can find earlier versions than the current LTS by scrolling down and finding the *Previous Releases* link.

The folder that you select to download and extract the binary distributions we'll refer to as the *Node Extract* directory.

### NodeNomad Directory

This is where you download the latest zip archive of NomadicNomad. Extract that into the *Node Extract* directory (simpler setup) or select a different directory (on more step to do).

### node-version.txt File

Rename the *node-version.example.txt* file to *node-version.txt* files and edit the top line to match the version of the node binary distribution you downloaded and extracted in the *Node Extracts* folder you wish to use. Just use the *major.minor.patch* version number, an example version is in the file. The top line is the active version, any underneath is just there for your reference or to copy-paste to the top when you want it to rule the roost. 

### note-parent-dir.txt File

If your *NodeNomad* directory is the same as your *Note Extracts* directory, you don't need this file. If they are different, enter 1 of the

1. Absolute path to the *NodeExtract* folder.
2. Relative path from the *NodeNomad* folder to the *NodeExtract* folder.

in the top line of the file. This provides a level of indirection.

### Generating Shortcuts

Run the *myshortcuts.ps1* script to create shortcuts for launching VSCode and PowerShell, the shortcuts will be in the *NodeNomad* directory.

### Upgrading NPM

To upgrade the version of NPM for your active version of Node, run the *updatenpm.ps1* script from within the *NodeNomad* folder. You will have needed to have used the *node_console* shortcut or have activated the desired version of Node by dot sourcing *nodeEnv.ps1* or *nodePw.ps1* script from within a PowerShell console.

```console
PS> ./updatenpm.ps1
```

## Usage

The *node_console* shortcut opens up a PowerShell console with the Node version in the first line of the *node-version.txt* file.

The *node_vscode* shortcut opens up Visual Studio code with Node in the path. If you dont have [Visual Studio Code](https://code.visualstudio.com/), consider it as it is an excellent editor. However, you can modify the script to create the shortcut for new shortcut for the editor of your appeal.

From a PowerShell console, run the *nodePw.ps1* script to activate the Node using the version in the first line of *node-version.txt*. You can also dot source the *nodeEnv.ps1* passing in the desired version of Node to activate.

## Making Things Flexible

The flexibility comes with being able to setup *NodeNomad* in multiple directories, creating shortcuts that launch different version of Node. Also, using the *nodeEnv.ps1* script from PowerShell, you can activate any version of Node you wish.

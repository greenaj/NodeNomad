# NomadicNode

**Node On Windows** *- it doesn't have to suck*

- Select a folder in which to unzip your binary 64 bit Windows Node binary distributions.
- Unzip NomadicNode zip package into a folder of your liking or just use the folder where you unzip your Node binaries.
- Follow instructions for setting things up.
- No installs to run, no PowerShell modules to install, no global symlinks to set, to shenanigans with the Windows Registry. No commitments.
- Have fun.

If you are using the 32 bit Node distribution on Windows, WTF are you doing with that crap?

## Setup

### Node Extract Directory

This is the folder you choose to download Node Windows binary distributions. These are just .zip files. Remember, no installers. To find these click the *Other Downloads* link uner the *LTS* or *Current* download buttons on [Node.js](https://nodejs.org/). You can find earlier versions than the current LTS by scrolling down and finding the *Previous Releases* link.

The folder that you select to download and extract the binary distributions we'll refer to as the *Node Extract* directory.

### NomadicNode Directory

This is where you download the latest zip archive of NomadicNomad. Extract that into the *Node Extract* directory (simpler setup) or select a different directory (on more step to do).

### node-version.txt File

Rename the *node-version.example.txt* file to *node-version.txt* files and edit the top line to match the version of the node binary distribution you downloaded and extracted in the *Node Extracts* folder. Just use the *major.minor.patch* version number, example version are in the file. The top line is the active version, any underneath just there for your reference.

### note-parent-dir.txt File

If your *NomadicNode* directory is the same as you *Note Extracts* directory, you don't need this file. If they are different, enter 1 of the

1. Absolute path to the *NodeExtract* folder.
2. Relative path from the *NomadicNode* folder to the *NodeExtract* folder.

in the top line of the file.

### Generating Shortcuts

Run the myshortcuts.ps1 script to create shortcuts for launching VSCode and PowerShell, the shortcuts will be in the *NomadicNode* directory.

## Usage

The *node_console* shortcut opens up a PowerShell console with the Node version in the first line of the *node-version.txt* file.

The *node_vscode* shortcut opens up Visual Studio code with Node in the path.

From a PowerShell console, run the *nodePw.ps1* script to activate the Node using the version in the first line of *node-version.txt*. You can also dot source the *nodeEnv.ps1* passing in the desired version of Node to activate.

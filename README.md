# PlutoLauncher

*Revised 2026-06-30*

A couple convenience scripts to more easily launch [Pluto](https://plutojl.org/), which is a reactive notebook environment for [Julia](https://julialang.org/).

These scripts will make sure Julia is up to date, make sure Pluto is installed and up to date, then launch Pluto in the same folder the scripts are in.

A couple notes on usage:
- Pluto will take longer to launch the first time, and whenever there is a julia update, due to the time taken to download and install packages. Give it a minute or so and it'll launch.
- Pluto will stay open even when your browser window is closed. To stop Pluto and free up resources, go to the terminal or powershell window and hit Ctrl+c, wait for the prompt to appear, then close the window.

## For Windows Users

**Installation**

1. Install Julia from the Microsoft Store or using the installer from their [website](https://julialang.org/downloads/)
2. Download *PlutoLauncher.ps1* and *PlutoLauncher.jl*
3. Put both files in the folder you want to launch Pluto in

**Starting Pluto**

1. Right click on *PlutoLauncher.ps1*
2. Click *Run in PowerShell*
3. Pluto will launch in your web browser!

**Closing Pluto**
1. Close the browser tab with Pluto in it.
2. Hit Ctrl+c in the Powershell window, wait for the prompt to appear, then close the window.

## For Linux Users

**Installation**

1. Install Julia by running `curl -fsSL https://install.julialang.org | sh` in your terminal, or according to the latest instructions on their website
2. Download *PlutoLauncher.sh* and *PlutoLauncher.jl*
3. Put both files in the folder you want to launch Pluto in
4. Open your terminal in that folder and run `chmod +x PlutoLauncher.sh` to make the file executable

**Starting Pluto**

1. Right click on *PlutoLauncher.sh*
2. Click *Run in Terminal* or equivalent.
3. Pluto will launch in your web browser!

**Closing Pluto**
1. Close the browser tab with Pluto in it.
2. Hit Ctrl+c in your terminal window, wait for the prompt to appear, then close the window.


## KDE Integration on Linux

If you want to be able to launch Pluto like an app from the menu:

**Installation**

1. Install Julia by running `curl -fsSL https://install.julialang.org | sh` in your terminal, or according to the latest instructions on their website
2. Download a zip of the repository, extract it, and move the *.PlutoLauncher* folder to your home directory. Since it starts with a dot it will be a hidden directory, so you can use Ctrl+h to view hidden files, so you can see it and move it around
3. Go into the *.PlutoLauncher* folder, open *PlutoLauncherDE.jl* in a text editor, and edit the string assigned to launch_directory to the working folder you want Pluto to launch in. By default, it's ~/Documents
4. Open the terminal in the *.PlutoLauncher* folder and run `chmod +x PlutoLauncherDE.sh` to make the file executable
5. Right click on the KDE Application Launcher Icon (usually a K, or an icon for your linux distro, at the beginning of the taskbar)
6. Click *Edit Applications*
7. Go to *New*, then *New Item*
8. Name the item something sensible, like Pluto Launcher
9. Put the absolute path to *PlutoLauncherDE.sh* (inside *.PlutoLauncher*) under Program. It should look like /home/your_username/.PlutoLauncher/PlutoLauncherDE.sh
10. Click the pencil icon to the right of the name field to add an icon. Click browse in the bottom left, and choose pluto_icon.svg in ~/.PlutoLauncher
11. Go to advanced, and check *Run in terminal*
12. Hit Save, and close the KDE Menu Editor
13. Restart your computer so the KDE Menu can update properly.

These steps are given for KDE. If you use a different desktop environment, you can use the same files, but the steps to create a menu entry for the Pluto Launcher will be different.

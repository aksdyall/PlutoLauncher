# PlutoLauncher

*Revised 2026-06-24*

A couple convenience scripts to more easily launch [Pluto](https://plutojl.org/), which is a reactive notebook environment for [Julia](https://julialang.org/).

These scripts will make sure Julia is up to date, make sure Pluto is installed and up to date, then launch Pluto in the same folder the scripts are in.

A couple notes on usage:
- Pluto will take longer to launch the first time, and whenever there is a julia update, due to the time taken to download and install packages. Give it a minute or so and it'll launch.
- Pluto will stay open even when your browser window is closed. To stop Pluto and free up resources, go to Task Manager (on Windows) or System Monitor (or equivalent, on Linux), right click on the Pluto Launcher entry, and select End Task or Quit Application.

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
2. Go to Task Manager, right click on Pluto Launcher, and click End Task.

## For Linux Users

**Installation**

1. Install Julia by running `curl -fsSL https://install.julialang.org | sh` in your terminal, or according to the latest instructions on their website
2. Download *PlutoLauncher.sh* and *PlutoLauncher.jl*
3. Put both files in the folder you want to launch Pluto in
4. Open your terminal in that folder and run `chmod +x PlutoLauncher.sh` to make the file executable

**Starting Pluto**

1. Right click on *PlutoLauncher.sh*
2. Click *Run Executable*
3. Pluto will launch in your web browser!

**Closing Pluto**
1. Close the browser tab with Pluto in it.
2. Go to System Monitor (or equivalent), right click on Pluto Launcher, and click Quit Application (or equivalent).


## KDE Integration on Linux

If you want to be able to launch Pluto like an app from the menu:

**Installation**

1.  Install Julia by running `curl -fsSL https://install.julialang.org | sh` in your terminal, or according to the latest instructions on their website
2. Download the *.PlutoLauncher* folder and place it in your home directory. Since it starts with a dot it will be a hidden directory, so you can use Ctrl+h to view hidden files and be able to see it.
3. Right click on the KDE Menu Icon (usually a K at the beginning of the taskbar)
4. Click *Edit Applications*
5. Go to *New*, then *New Item*
6. Name the item something sensible, like Pluto Launcher.
8. Put the absolute path to *PlutoLauncherDE.sh* (inside *.PlutoLauncher*) under Program. It should look like /home/your_username/.PlutoLauncher/PlutoLauncherDE.sh
9. Hit Save, and close the KDE Menu Editor

These steps are given for KDE. If you use a different desktop environment, you can use the same files, but the steps to create a menu entry for the Pluto Launcher will be different.

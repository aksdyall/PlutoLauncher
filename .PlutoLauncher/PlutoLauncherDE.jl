#Launches Pluto in a Specific Directory

#Change the path below to the directory you want Pluto to launch in. This directory and its subdirectories should contain your Pluto notebooks and any supporting files.
launch_directory="~/Documents/"

using Pkg
pluto_is_installed=false
for d in values(Pkg.dependencies())
    if d.name=="Pluto"
        global pluto_is_installed = true
        break
    end
end
if pluto_is_installed
    Pkg.update("Pluto")
else
    Pkg.add("Pluto")
end
using Pluto
Pluto.run()

#=

KDE Integration:

If you want PlutoLauncher to update julia, you will also need PlutoLauncherDE.sh. Follow the instructions in README.md.

If you just want to use this file on its own, though, you can! It will make sure Pluto is installed, update Pluto, and launch Pluto, but it will not update Julia itself. Follow these instructions to integrate this file on its own with KDE:

1. Install Julia.
2. Put this file in a sensible location (e.g., create a folder called ~/.PlutoLauncher/ and put it in there)
2. Right click on the Menu Icon (usually a K at the beginning of the taskbar)
3. Click Edit Applicaitons
4. Go to New, then New Item
5. Put Pluto Launcher under Name, julia under Program, and the path to PlutoLauncher.jl under Command Line Arguments. Note that you need to use an absolute path here, like /home/username/.PlutoLauncher/PlutoLauncher.jl. Last I checked a ~/ won't work here.
5. Hit Save, and close the KDE Menu Editor

Now you have a menu item that will launch Pluto when selected! \(^o^)/

To close the program and free up resources, open System Monitor, right click on Pluto Launcher, and click Close Application.

Alternatively, you can run this script from julia, if you want an easy way to start/update Pluto in the desired folder, but still want to be able to quit Pluto by hitting Ctrl+C in the terminal.

=#

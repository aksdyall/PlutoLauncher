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

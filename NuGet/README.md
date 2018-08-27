# Hello NuGet!

This repository is created just for playing with NuGet.

***

Because nuget.exe is the command-line utility you have to install it manually.

1. Download required nuget.exe from [nuget.org/downloads](https://nuget.org/downloads).
2. Copy downloaded nuget.exe to C:\Program Files (x86)\NuGet.
3. Add the folder where you placed nuget.exe to your PATH environment variable.

***

`nuget restore [<solution> | <packages.config file> | <Microsoft Build project>]` restores NuGet packages.

`nuget sources`

`nuget list`

`nuget list -source <source>`

`nuget list -source <source> -allversions`

`nuget install <package>`

`nuget install <package> -version <version>`

`nuget install <package> -version <version> -source <source>`

`nuget push <package> -source <source> -ApiKey <apikey>`

`nuget locals all -list`

`nuget locals all -clear`

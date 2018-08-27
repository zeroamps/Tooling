# Hello NuGet!

This repository is created just for playing with NuGet.

***

Because nuget.exe is the command-line utility you have to install it manually.

1. Download required nuget.exe from [nuget.org/downloads](https://nuget.org/downloads).
2. Copy downloaded nuget.exe to C:\Program Files (x86)\NuGet.
3. Add the folder where you placed nuget.exe to your PATH environment variable.

***

`nuget restore [<solution> | <packages.config file> | <Microsoft Build project>]` restores NuGet packages.

`nuget sources` gets all available package sources.

`nuget list` gets all available packages from all available sources.

`nuget list -source <source>` gets all available packages from the source.

`nuget list -source <source> -allversions` gets all versions of each available package from the source.

`nuget install <package>` installs the latest version of a package.

`nuget install <package> -version <version>` installs the specific version of a package.

`nuget install <package> -version <version> -source <source>` installs the specific version of a package from the source.

`nuget push <package> -source <source> -ApiKey <apikey>` publishes a package to the source.

`nuget locals all -list` gets all local caches.

`nuget locals all -clear` clears all local caches.

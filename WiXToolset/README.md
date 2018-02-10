# Hello WiX Toolset!

This repository is created just for playing with WiX Toolset.

***

1. Download the latest version here [WiX Toolset](http://wixtoolset.org).
2. Add the WiX "%WIX%bin" folder to your PATH environment variable.
3. If you want to create WiX packages using Visual Studio also install the extensions for Visual Studio.

***

* candle.exe is tool which preprocesses and compiles WiX source files into object files (.wixobj).
* light.exe is tool which links and binds one or more .wixobj files and creates a Windows Installer database (.msi or .msm).
* heat.exe is tool which is used for harvesting files into components and generating WiX files (.wxs).
* dark.exe is tool which converts a Windows Installer database into a set of WiX source files.

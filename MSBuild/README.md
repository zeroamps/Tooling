# Hello MSBuild!

This repository is created just for playing with MSBuild.

***

The easiest way to start using MSBuild installed with Microsoft Visual Studio from command line. 
1. Add this folder C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\Common7\Tools\ or C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\Tools\ (depends on version of VS you have installed) to your PATH environment variable.
2. Start command line and type LaunchDevCmd.bat which loads all you need to use MSBuild.

***

`msbuild solution.sln /t:Rebuild /p:Configuration=Release /p:Platform="Any CPU"` rebuilds a solution in the Release configuration for the Any CPU platform.

***

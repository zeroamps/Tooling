# The Get-Variable cmdlet gets the Windows PowerShell variables in the current console.
# You can see predefined variables or you can create you own variables.
Get-Variable


# built-in variable which tells you version information for powershell you use now
$PSVersionTable

# built-in variable which tells you the directory where PowerShell is installed
$PSHOME

# The profile is loaded every time that Windows PowerShell starts.
$profile

# The PSModulePath environment variable stores the paths to the locations of the modules that are installed on disk.
$env:PSModulePath

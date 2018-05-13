# Adds modules to the current session.
Import-Module .\PowerShellInUse.ModuleUsage\HelloWorldModule\HelloWorldModule.psd1 

# Call the Write-HelloModule function from the HelloWorld module.
Write-HelloModule

# Gets the modules that have been imported or that can be imported into the current session.
Get-Module

# Removes modules from the current session.
Remove-Module HelloWorldModule

# The module should be already removed.
Get-Module


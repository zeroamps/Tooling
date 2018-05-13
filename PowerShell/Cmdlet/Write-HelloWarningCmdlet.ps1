function Write-HelloWarning
{
	# The CmdletBinding attribute is an attribute of functions that makes them operate 
	# like compiled cmdlets that are written in C#, and it provides access to features of cmdlets.
	# See: https://goo.gl/Z5EZig
	[CmdletBinding()]
	param
	(
		# There are no parameters!
	)

	Write-Warning "This cmdlet is too easy!";
	Write-Host "Hello, warning!";
}

Write-HelloWarning
Write-HelloWarning -WarningAction SilentlyContinue
Write-HelloWarning -WarningAction Stop

function Write-HelloError
{
	# The CmdletBinding attribute is an attribute of functions that makes them operate 
	# like compiled cmdlets that are written in C#, and it provides access to features of cmdlets.
	# See: https://goo.gl/Z5EZig
	[CmdletBinding()]
	param
	(
		# There are no parameters!
	)

	Write-Error "This is very bad!";
	Write-Host "Hello, error!";
}

Write-HelloError
Write-HelloError -ErrorAction SilentlyContinue
Write-HelloError -ErrorAction Stop

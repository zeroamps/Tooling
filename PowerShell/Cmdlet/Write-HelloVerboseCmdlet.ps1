function Write-HelloVerbose
{
	# The CmdletBinding attribute is an attribute of functions that makes them operate 
	# like compiled cmdlets that are written in C#, and it provides access to features of cmdlets.
	# See: https://goo.gl/Z5EZig
	[CmdletBinding()]
	param
	(
		# There are no parameters!
	)

	Write-Verbose "Begin!"
	Write-Host "Hello, verbose!";
	Write-Verbose "End!"
}

Write-HelloVerbose
Write-HelloVerbose -Verbose

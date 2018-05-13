function Write-HelloSwitchParameter
{
	# The CmdletBinding attribute is an attribute of functions that makes them operate 
	# like compiled cmdlets that are written in C#, and it provides access to features of cmdlets.
	# See: https://goo.gl/Z5EZig
	[CmdletBinding()]
	param
	(
		[Switch]
		$HideMessage
	)

	# You can also use ! instead of -Not.
	if (-Not $HideMessage)
	{
		Write-Host "Hello, switch parameter!";
	}
}

Write-HelloSwitchParameter
Write-HelloSwitchParameter -HideMessage

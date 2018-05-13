function Write-HelloConfirmParameter
{
	# The CmdletBinding attribute is an attribute of functions that makes them operate 
	# like compiled cmdlets that are written in C#, and it provides access to features of cmdlets.
	# See: https://goo.gl/Z5EZig
	[CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact = "Medium")]
	param
	(
		# There are no parameters!
	)

	if ($PSCmdlet.ShouldProcess("Hello, WhatIfParameter!", "Write-Host")) 
	{
		Write-Host "Hello, WhatIfParameter!";
	}
}

Write-HelloConfirmParameter
Write-HelloConfirmParameter -Confirm

$ConfirmPreference

Write-HelloConfirmParameter
Write-HelloConfirmParameter -Confirm

$ConfirmPreference = "Medium"

Write-HelloConfirmParameter

$ConfirmPreference = "High"

Write-HelloConfirmParameter

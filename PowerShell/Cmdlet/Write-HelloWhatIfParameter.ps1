function Write-HelloWhatIfParameter
{
	# The CmdletBinding attribute is an attribute of functions that makes them operate 
	# like compiled cmdlets that are written in C#, and it provides access to features of cmdlets.
	# See: https://goo.gl/Z5EZig
	[CmdletBinding(SupportsShouldProcess=$true)]
	param
	(
		# There are no parameters!
	)

	if ($PSCmdlet.ShouldProcess("Hello, WhatIfParameter!", "Write-Host")) 
	{
		Write-Host "Hello, WhatIfParameter!";
	}
}

$WhatIfPreference 

Write-HelloWhatIfParameter
Write-HelloWhatIfParameter -WhatIf

$WhatIfPreference = $true

Write-HelloWhatIfParameter

$WhatIfPreference = $false

Write-HelloWhatIfParameter

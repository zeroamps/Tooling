function Write-HelloValidateSetAttribute
{
	# The CmdletBinding attribute is an attribute of functions that makes them operate 
	# like compiled cmdlets that are written in C#, and it provides access to features of cmdlets.
	# See: https://goo.gl/Z5EZig
	[CmdletBinding()]
	param
	(
		[Parameter(Mandatory=$true)]
		[string]$Message,

		# You can omit this attribute.
		[Parameter()]
		# Lower and Upper are only values you can assign to.
		[ValidateSet("Lower", "Upper")]
		$Case
	)
	
	switch($Case) 
	{
		"Lower" { Write-Host $Message.ToLower(); }
		"Upper" { Write-Host $Message.ToUpper(); }
		default { Write-Host $Message; }
	}
}

Write-HelloValidateSetAttribute -Message "Hello, ValidateSet attribute!"
Write-HelloValidateSetAttribute -Message "Hello, ValidateSet attribute!" -Case Lower
Write-HelloValidateSetAttribute -Message "Hello, ValidateSet attribute!" -Case Upper

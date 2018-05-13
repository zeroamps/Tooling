function Write-HelloValidateNotNullOrEmptyAttribute
{
	# The CmdletBinding attribute is an attribute of functions that makes them operate 
	# like compiled cmdlets that are written in C#, and it provides access to features of cmdlets.
	# See: https://goo.gl/Z5EZig
	[CmdletBinding()]
	param
	(
		# Parameter value cannot be null ($null) and cannot be an empty string (""). 
		[ValidateNotNullOrEmpty()]
		[string]$Message		
	)
	
	Write-Host $Message;
}

Write-HelloValidateNotNullOrEmptyAttribute -Message $null
Write-HelloValidateNotNullOrEmptyAttribute -Message ""
Write-HelloValidateNotNullOrEmptyAttribute -Message "Hello, ValidateNotNullOrEmpty attribute!"

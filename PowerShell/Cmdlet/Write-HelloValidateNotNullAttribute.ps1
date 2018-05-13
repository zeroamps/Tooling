function Write-HelloValidateNotNullAttribute
{
	# The CmdletBinding attribute is an attribute of functions that makes them operate 
	# like compiled cmdlets that are written in C#, and it provides access to features of cmdlets.
	# See: https://goo.gl/Z5EZig
	[CmdletBinding()]
	param
	(
		# Parameter value cannot be null ($null), but can be an empty string ("").
		# It works only when the type of the parameter value is not specified or when the specified type will accept a value of Null.
		[ValidateNotNull()]
		$Message		
	)
	
	Write-Host $Message;
}

Write-HelloValidateNotNullAttribute -Message $null
Write-HelloValidateNotNullAttribute -Message ""
Write-HelloValidateNotNullAttribute -Message "Hello, ValidateNotNull attribute!"

function Write-HelloValidatePatternAttributeCmdlet
{
	# The CmdletBinding attribute is an attribute of functions that makes them operate 
	# like compiled cmdlets that are written in C#, and it provides access to features of cmdlets.
	# See: https://goo.gl/Z5EZig
	[CmdletBinding()]
	param
	(
		# You can omit this attribute.
		[Parameter()]
		# The message parameter must contain only digits.
		[ValidatePattern("^[0-9]+$")]
		# You can specify type, but you can omit it.
		# You can assign default value, but you don't need to.
		# The default value isn't checked by ValidatePattern !!!
		[string]$Message = "1234567890"
	)

	Write-Host $Message;
}

Write-HelloValidatePatternAttributeCmdlet
Write-HelloValidatePatternAttributeCmdlet -Message "1233454565676787890000"

# throws an exception because it contains non-digit characters
Write-HelloValidatePatternAttributeCmdlet -Message "Hello, validate pattern attribute!"

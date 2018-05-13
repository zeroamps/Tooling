function Write-HelloValidateScriptAttributeCmdlet
{
	# The CmdletBinding attribute is an attribute of functions that makes them operate 
	# like compiled cmdlets that are written in C#, and it provides access to features of cmdlets.
	# See: https://goo.gl/Z5EZig
	[CmdletBinding()]
	param
	(
		# You can omit this attribute.
		[Parameter()]
		# The length of the input parameter must be greater or equal 10.
		# $_ is the variable for the current value.
		[ValidateScript({ $_.Length -ge 10 })]
		# You can specify type, but you can omit it.
		# You can assign default value, but you don't need to.
		# The default value isn't checked by ValidateScript !!!
		[string]$Message = "Hello, validate script attribute!"
	)

	Write-Host $Message;
}

Write-HelloValidateScriptAttributeCmdlet
Write-HelloValidateScriptAttributeCmdlet -Message "Hellooooo!" 
Write-HelloValidateScriptAttributeCmdlet -Message "Hello, validate script attribute!"

# throws an exception because it contains less than 10 characters
Write-HelloValidateScriptAttributeCmdlet -Message "Hello!"

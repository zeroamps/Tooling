function Write-HelloParameter
{
	# The CmdletBinding attribute is an attribute of functions that makes them operate 
	# like compiled cmdlets that are written in C#, and it provides access to features of cmdlets.
	# See: https://goo.gl/Z5EZig
	[CmdletBinding()]
	param
	(
		# You can omit this attribute.
		[Parameter()]
		# You can specify type, but you can omit it.
		# You can assign default value, but you don't need to.
		[string]$Message = "Hello, parameter!"
	)

	Write-Host $Message;
}

Write-HelloParameter
Write-HelloParameter -Message "Hello, parameter!"

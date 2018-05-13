function Write-HelloAllowNullAttribute
{
	# The CmdletBinding attribute is an attribute of functions that makes them operate 
	# like compiled cmdlets that are written in C#, and it provides access to features of cmdlets.
	# See: https://goo.gl/Z5EZig
	[CmdletBinding()]
	param
	(
		[Parameter(Mandatory=$true)]
		# Allows the value of a mandatory parameter to be null ($null).
		# It works only when the type of the parameter value is not specified or when the specified type will accept a value of Null.
		[AllowNull()]
		$Message
	)

	Write-Host $Message;
}

Write-HelloAllowNullAttribute -Message $null
Write-HelloAllowNullAttribute "Hello, AllowNull parameter!"

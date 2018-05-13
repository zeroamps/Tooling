function Write-HelloMandatoryParameter
{
	# The CmdletBinding attribute is an attribute of functions that makes them operate 
	# like compiled cmdlets that are written in C#, and it provides access to features of cmdlets.
	# See: https://goo.gl/Z5EZig
	[CmdletBinding()]
	param
	(
		[Parameter(Mandatory=$true)]
		# You can specify type, but you can omit it.
		[string]$Message
	)

	Write-Host $Message;
}

Write-HelloMandatoryParameter -Message "Hello, parameter!"
Write-HelloMandatoryParameter "Hello, parameter!"

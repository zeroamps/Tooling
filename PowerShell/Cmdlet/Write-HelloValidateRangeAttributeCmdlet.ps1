function Write-HelloValidateRangeAttributeCmdlet
{
	# The CmdletBinding attribute is an attribute of functions that makes them operate 
	# like compiled cmdlets that are written in C#, and it provides access to features of cmdlets.
	# See: https://goo.gl/Z5EZig
	[CmdletBinding()]
	param
	(
		# You can omit this attribute.
		[Parameter()]
		# The count parameter must be in the range <1, .., 10>.
		[ValidateRange(1, 10)]
		# You can specify type, but you can omit it.
		# You can assign default value, but you don't need to.
		# The default value isn't checked by ValidateRange !!!
		[int]$Count = 1
	)

	for ($i = 0; $i -lt $Count; $i++) 
	{
		Write-Host "Hello, validate range attribute!";
	}
}

Write-HelloValidateRangeAttributeCmdlet
Write-HelloValidateRangeAttributeCmdlet -Count 3

# throws an exception because itn't in the range
Write-HelloValidateRangeAttributeCmdlet -Count 100

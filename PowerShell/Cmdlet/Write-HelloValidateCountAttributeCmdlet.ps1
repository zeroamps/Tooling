function Write-HelloValidateCountAttributeCmdlet
{
	# The CmdletBinding attribute is an attribute of functions that makes them operate 
	# like compiled cmdlets that are written in C#, and it provides access to features of cmdlets.
	# See: https://goo.gl/Z5EZig
	[CmdletBinding()]
	param
	(
		# You can omit this attribute.
		[Parameter()]
		# The number of parameters must be from 1 to 5.
		[ValidateCount(1, 5)]
		# You can specify type, but you can omit it.
		# You can assign default value, but you don't need to.
		# The default value isn't checked by ValidateCount !!!
		[int[]]$Numbers = (1,2,3)
	)

	foreach ($item in $Numbers) 
	{
		Write-Host $item;
	}
}

Write-HelloValidateCountAttributeCmdlet
Write-HelloValidateCountAttributeCmdlet -Numbers 1,2,3,4,5

# throws an exception because there is more arguments than 5
Write-HelloValidateCountAttributeCmdlet -Numbers 1,2,3,4,5,6,7,8,9

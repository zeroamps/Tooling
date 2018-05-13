function Write-HelloDefaultParameterSetName
{
	# The CmdletBinding attribute is an attribute of functions that makes them operate 
	# like compiled cmdlets that are written in C#, and it provides access to features of cmdlets.
	# See: https://goo.gl/Z5EZig

	# You can specify which parameter set is used by default.
	[CmdletBinding(DefaultParameterSetName="UserName")]
	param
	(
		# You have to define either UserId or UserName.
		# Mandatory doesn't make sense and you can omit it.
		[Parameter(Mandatory=$true, ParameterSetName="UserId")]
		# You can specify type, but you can omit it.
		# You can assign default value, but you don't need to.
		[int]$UserId = 3545,

		# You have to define either UserId or UserName.
		[Parameter(ParameterSetName="UserName")]
		# You can specify type, but you can omit it.
		# You can assign default value, but you don't need to.
		[string]$UserName = "SuperUser",

		# You can specify type, but you can omit it.
		# You can assign default value, but you don't need to.
		# You can use Message parameter only with UserName, but not with UserId
		[Parameter(ParameterSetName="UserName")]
		[string]$Message = "Hello, DefaultParameterSetName!"
	)

	# $PSCMDLET contains an object that represents the cmdlet or advanced function that is being run.
	if ($PSCmdlet.ParameterSetName -eq "UserId") 
	{
		Write-Host "$Message ($UserId)";
	} 
	elseif ($PSCmdlet.ParameterSetName -eq "UserName")
	{
		Write-Host "$Message ($UserName)";
	}
}

# You can see syntax for you cmdlet.
Get-Help Write-HelloDefaultParameterSetName

Write-HelloDefaultParameterSetName -UserName "SuperUser"
Write-HelloDefaultParameterSetName -UserName "Root" -Message "Delete"

# it throws exception because you can't use Message parameter with UserId
Write-HelloDefaultParameterSetName -UserId 123456 -Message "Delete"

# because you defined DefaultParameterSetName and UserName is not mandatory, it takes default values.
Write-HelloDefaultParameterSetName

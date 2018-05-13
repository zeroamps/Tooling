function Write-HelloParameterSetName
{
	# The CmdletBinding attribute is an attribute of functions that makes them operate 
	# like compiled cmdlets that are written in C#, and it provides access to features of cmdlets.
	# See: https://goo.gl/Z5EZig
	[CmdletBinding()]
	param
	(
		[Parameter(ParameterSetName="UserId")]
		# You can specify type, but you can omit it.
		[int]$UserId,

		[Parameter(ParameterSetName="UserName")]
		# You can specify type, but you can omit it.
		[string]$UserName,

		# You can specify type, but you can omit it.
		# You can assign default value, but you don't need to.
		[string]$Message = "Hello, ParameterSetName!"
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

Write-HelloParameterSetName -UserId 123456
Write-HelloParameterSetName -UserName "SuperUser"
Write-HelloParameterSetName -UserName "Root" -Message "Delete"

 # it throws an exception, because you have to define UserId or UserName value.
 # doesn't matter if UserId and UserName are mandatory or not, it works the same
Write-HelloParameterSetName



function Write-HelloParameterSetNameAdvanced
{
	# The CmdletBinding attribute is an attribute of functions that makes them operate 
	# like compiled cmdlets that are written in C#, and it provides access to features of cmdlets.
	# See: https://goo.gl/Z5EZig
	[CmdletBinding()]
	param
	(
		[Parameter(Mandatory=$true, ParameterSetName="ParameterSet1")]
		[Parameter(Mandatory=$true, ParameterSetName="ParameterSet2")]
		# You can specify type, but you can omit it.
		[string]$Message,

		[Parameter(Mandatory=$true, ParameterSetName="ParameterSet2")]
		# You can specify type, but you can omit it.
		[string]$UserName,

		[Parameter(Mandatory=$true, ParameterSetName="ParameterSet2")]
		# You can specify type, but you can omit it.
		[string]$Password
	)

	# $PSCMDLET contains an object that represents the cmdlet or advanced function that is being run.
	if ($PSCmdlet.ParameterSetName -eq "ParameterSet1") 
	{
		Write-Host $Message;
	} 
	elseif ($PSCmdlet.ParameterSetName -eq "ParameterSet2")
	{
		Write-Host "$Message ($UserName and $Password)";
	}
}

# You have to specify only message parameter.
Write-HelloParameterSetNameAdvanced -Message "Hello, HelloParameterSetNameAdvanced!"

# If you specify UserName you have to also specify Password.
Write-HelloParameterSetNameAdvanced -Message "Hello, HelloParameterSetNameAdvanced!" -UserName "SuperUser" -Password 123456

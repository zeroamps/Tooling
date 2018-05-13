function Write-HelloValueFromPipelineByPropertyName
{
	# The CmdletBinding attribute is an attribute of functions that makes them operate 
	# like compiled cmdlets that are written in C#, and it provides access to features of cmdlets.
	# See: https://goo.gl/Z5EZig
	[CmdletBinding()]
	param
	(
		# It takes just Name properties from the objects comming from pipeline.
		[Parameter(ValueFromPipelineByPropertyName=$true)]
		$Name
	)

	# Executes before processing items from pipeline
	begin 
	{
		Write-Host "Start processing!";
	}

	# Executes for each item from pipeline
	process 
	{
		Write-Host "Hello, $Name!";
	}

	# Executes after processing items from pipeline
	end 
	{
		Write-Host "End processing!";
	}
}

# Takes items from Get-ChildItem and sends them to Write-HelloValueFromPipelineByPropertyName
Get-ChildItem | Write-HelloValueFromPipelineByPropertyName

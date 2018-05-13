function New-Array
{
	# The CmdletBinding attribute is an attribute of functions that makes them operate 
	# like compiled cmdlets that are written in C#, and it provides access to features of cmdlets.
	# See: https://goo.gl/Z5EZig
	[CmdletBinding()]
	param
	(	
		[Parameter()]
		# You can specify type, but you can omit it.
		[int[]]$Number = (1,2,3,4,5)
	)

	return $Number
}

function Add-Number
{
	# The CmdletBinding attribute is an attribute of functions that makes them operate 
	# like compiled cmdlets that are written in C#, and it provides access to features of cmdlets.
	# See: https://goo.gl/Z5EZig
	[CmdletBinding()]
	param
	(	
		[Parameter(ValueFromPipeline=$true)]
		# You can specify type, but you can omit it.
		[int]$Number,

		[Parameter()]
		# You can specify type, but you can omit it.
		[int]$Add = 0
	)

	# Executes before processing items from pipeline
	begin 
	{
		Write-Host "Start processing $Add!";
	}

	# Executes for each item from pipeline
	process 
	{
		$Number + $Add
	}

	# Executes after processing items from pipeline
	end 
	{
		Write-Host "End processing $Add!";
	}
}

function Multiply-Number
{
	# The CmdletBinding attribute is an attribute of functions that makes them operate 
	# like compiled cmdlets that are written in C#, and it provides access to features of cmdlets.
	# See: https://goo.gl/Z5EZig
	[CmdletBinding()]
	param
	(	
		[Parameter(ValueFromPipeline=$true)]
		# You can specify type, but you can omit it.
		[int]$Number,

		[Parameter()]
		# You can specify type, but you can omit it.
		[int]$Multiply = 1
	)

	# Executes before processing items from pipeline
	begin 
	{
		Write-Host "Start processing $Multiply!";
	}

	# Executes for each item from pipeline
	process 
	{
		$Number * $Multiply
	}
	
	# Executes after processing items from pipeline
	end 
	{
		Write-Host "End processing $Multiply!";
	}
}

New-Array 1,2,3,4,5,6,7 | Add-Number -Add 10 | Multiply-Number -Multiply 100
New-Array 1,2,3 | Multiply-Number -Multiply 10 | Add-Number -Add 5

#
#	If you want to know more about PowerShell jobs.
#
#	PS C:\>Get-Help about_Jobs
#	PS C:\>Get-Help about_Job_Details
#	PS C:\>Get-Help about_Remote_Jobs
#

#
#	If you want to know more about PowerShell jobs cmdlets.
#
#	PS C:\>Get-Help Start-Job
#	PS C:\>Get-Help Get-Job
#	PS C:\>Get-Help Receive-Job
#	PS C:\>Get-Help Stop-Job
#	PS C:\>Get-Help Wait-Job
#	PS C:\>Get-Help Remove-Job
#


#	Example 1
$job = Start-Job -ScriptBlock { Get-Process }

Get-Job -Id $job.Id
Wait-Job $job

Get-Job -Id $job.Id
Receive-Job $job | Format-Table

Get-Job -Id $job.Id
Remove-Job $job


#	Example 2
Start-Job -ScriptBlock { Get-Process }
Start-Job -ScriptBlock { Get-Process }
Start-Job -ScriptBlock { Get-Process }

Get-Job | Wait-Job
Get-Job | Receive-Job | Format-Table
Get-Job | Remove-Job

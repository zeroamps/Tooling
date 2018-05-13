#
#	If you want to know more about PowerShell scheduled jobs.
#
#	PS C:\>Get-Help about_Scheduled_Jobs
#	PS C:\>Get-Help about_Scheduled_Jobs_Basics
#	PS C:\>Get-Help about_Scheduled_Jobs_Advanced
#	PS C:\>Get-Help about_Scheduled_Jobs_Troubleshooting
#

#
#	If you want to know more about PowerShell scheduled jobs cmdlets.
#
#	PS C:\>Get-Help Register-ScheduledJob
#	PS C:\>Get-Help Get-ScheduledJob
#	PS C:\>Get-Help Set-ScheduledJob
#	PS C:\>Get-Help Disable-ScheduledJob
#	PS C:\>Get-Help Enable-ScheduledJob
#	PS C:\>Get-Help Unregister-ScheduledJob
#
#	PS C:\>Get-Help New-JobTrigger
#	PS C:\>Get-Help Get-JobTrigger
#	PS C:\>Get-Help Set-JobTrigger
#	PS C:\>Get-Help Add-JobTrigger
#	PS C:\>Get-Help Disable-JobTrigger
#	PS C:\>Get-Help Enable-JobTrigger
#	PS C:\>Get-Help Remove-JobTrigger
#
#	PS C:\>Get-Help New-ScheduledJobOption
#	PS C:\>Get-Help Get-ScheduledJobOption
#	PS C:\>Get-Help Set-ScheduledJobOption
#


#	Example 1
$trigger = New-JobTrigger -Daily -At 2AM
Register-ScheduledJob -Name ProcessJob -ScriptBlock { Get-Process } -Trigger $trigger
Unregister-ScheduledJob -Name ProcessJob


#	Example 2
$trigger = New-JobTrigger -Weekly -DaysOfWeek Saturday -At 2AM
Register-ScheduledJob -Name ProcessJob -ScriptBlock { Get-Process } -Trigger $trigger
Unregister-ScheduledJob -Name ProcessJob


#	Where to find definitions and results for scheduled jobs. 
#	$HOME\AppData\Local\Microsoft\Windows\PowerShell\ScheduledJobs

#	Where to find definitions for scheduled jobs in Task Scheduler. 
#	Open Microsoft Management Console (mmc) and add Task Scheduler.
#	Look at [Console Root\Task Scheduler (Local)\Task Scheduler Library\Microsoft\Windows\PowerShell]
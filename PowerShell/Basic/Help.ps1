# tells you how to use windows powershell help system
Get-Help

# tells you how to use windows powershell help system with pagination
Get-Help | more


# gets all powershell concepts
Get-Help *about*

# tells you how to use powershell arrays, but you can get any concept you need to know
Get-Help about_Arrays


# tells you how to use Get-Command cmdlet.
Get-Help Get-Command

# tells you how to use Get-Command cmdlet by opening online help.
Get-Help Get-Command -Online

# displays only the detailed descriptions of the specified parameters.
Get-Help Get-Command -Parameter Name

# displays the help topic in a window for easier reading.
# !!! Only works in powershell console. In Visual Stusio it throws an exception. !!!
Get-Help Get-Command -ShowWindow


# downloads and installs the newest help files on your computer.
# !!! RUN AS ADMINISTRATOR !!!
Update-Help


# gets a list of the commands entered during the current session.
Get-History


# gets all commands that are installed on the computer, including cmdlets, 
# aliases, functions, workflows, filters, scripts, and applications
Get-Command -CommandType All


# creates Windows PowerShell commands in a graphical command window.
# !!! Only works in powershell console. In Visual Stusio it throws an exception. !!!
Show-Command Get-Command


# gets sorted approved Windows PowerShell verbs.
Get-Verb | Sort-Object

# you can also get nouns, but the different way. 
Get-Command | Select-Object Noun | Sort-Object Noun -Unique


# Gets the properties and methods of objects.
Get-Command | Get-Member
Get-ChildItem | Get-Member

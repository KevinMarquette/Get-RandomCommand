I figured out that Invoke-Task is not the same as Task

Command:

``` powershell
Clear-History
```


Command:

``` powershell
Get-RandomCommand
```


Command:

``` powershell
Get-NetIPHttpsConfiguration
```


Command:

``` powershell
Get-NetIPHttpsConfiguration -Verbose
```


Command:

``` powershell
Get-Help get-NetIPHttpsConfiguration
```

Output:

```

NAME
    Get-NetIPHttpsConfiguration
    
SYNOPSIS
    Gets the IP-HTTPS configuration from a computer or a Group Policy Object (GPO).
    
    
SYNTAX
    Get-NetIPHttpsConfiguration [-AsJob] [-CimSession <CimSession[]>] [-PolicyStore 
    <String>] [-Profile <String[]>] [-ProfileActivated <Boolean[]>] [-ThrottleLimit 
    <Int32>] [<CommonParameters>]
    
    Get-NetIPHttpsConfiguration [-AsJob] [-CimSession <CimSession[]>] [-GPOSession 
    <String>] [-Profile <String[]>] [-ProfileActivated <Boolean[]>] [-ThrottleLimit 
    <Int32>] [<CommonParameters>]
    
    
DESCRIPTION
    The Get-NetIPHttpsConfiguration cmdlet gets the IP-HTTPS configuration from a computer 
    or a Group Policy Object (GPO).
    
    You can also use Get-NetIPHttpsConfiguration to retrieve the IP-HTTPS configuration, 
    and then use the configuration information as input into other cmdlets.
    

RELATED LINKS
    Online Version: http://go.microsoft.com/fwlink/?linkid=287459
    New-NetIPHttpsConfiguration 
    Remove-NetIPHttpsConfiguration 
    Rename-NetIPHttpsConfiguration 
    Reset-NetIPHttpsConfiguration 
    Set-NetIPHttpsConfiguration 

REMARKS
    To see the examples, type: "get-help Get-NetIPHttpsConfiguration -examples".
    For more information, type: "get-help Get-NetIPHttpsConfiguration -detailed".
    For technical information, type: "get-help Get-NetIPHttpsConfiguration -full".
    For online help, type: "get-help Get-NetIPHttpsConfiguration -online"



```


Command:

``` powershell
Get-command get-NetIPHttpsConfiguration
```

Output:

```

CommandType     Name                                               Version    Source        
-----------     ----                                               -------    ------        
Function        Get-NetIPHttpsConfiguration                        1.0.0.0    NetworkTran...



```


Command:

``` powershell
Get-command get-NetIPHttpsConfiguration | ft -AutoSize
```

Output:

```

CommandType Name                        Version Source           
----------- ----                        ------- ------           
Function    Get-NetIPHttpsConfiguration 1.0.0.0 NetworkTransition



```


Command:

``` powershell
Get-Help get-NetIPHttpsConfiguration -Examples
```

Output:

```

NAME
    Get-NetIPHttpsConfiguration
    
SYNOPSIS
    Gets the IP-HTTPS configuration from a computer or a Group Policy Object (GPO).
    
    
    Example 1: Get the IP-HTTPS configuration
    
    PS C:\>Get-NetIPHttpsConfiguration
    
    This command gets the IP-HTTPS configuration from a computer or a GPO.




```


Command:

``` powershell
Get-Help rename-NetIPHttpsConfiguration -Examples
```

Output:

```

NAME
    Rename-NetIPHttpsConfiguration
    
SYNOPSIS
    Renames an IP-HTTPS profile.
    
    
    Example 1: Rename an IP-HTTPS profile using a configuration object
    
    PS C:\>$config = Get-NetIPHttpsConfiguration –PolicyStore "testdomain\GPOName"
    
    
    
    PS C:\>Rename-NetIPHttpsConfiguration –InputObject $config
    
    This set of commands uses the Get-NetIPHttpsConfiguration cmdlet to get an IP-HTTPS 
    configuration object and stores it in a variable named $config. The contents of the 
    variable are then passed to this cmdlet.
    Example 2: Rename an IP-HTTPS profile
    
    PS C:\>Rename-NetIPHttpsConfiguration –Profile Redmond –NewName Fareast
    
    This command renames the IP-HTTPS profile named Redmond to Fareast.




```


Command:

``` powershell
Get-NetIPHttpsConfiguration
```


Command:

``` powershell
Get-NetIPHttpsConfiguration -Profile 
```


Command:

``` powershell
Get-NetIPHttpsState
```


Command:

``` powershell
Get-NetIPHttpsConfiguration
```


Command:

``` powershell
Get-RandomCommand
```


Command:

``` powershell
Get-Command invoke-task
```

Output:

```

CommandType     Name                                               Version    Source        
-----------     ----                                               -------    ------        
Function        Invoke-Task                                        4.7.0      psake         



```


Command:

``` powershell
Get-Alias task
```


Command:

``` powershell
Import-Module psake
```


Command:

``` powershell
Get-Alias task
```


Command:

``` powershell
Get-Help invoke-task
```

Output:

```

NAME
    Invoke-Task
    
SYNOPSIS
    Executes another task in the current build script.
    
    
SYNTAX
    Invoke-Task [-taskName] <String> [<CommonParameters>]
    
    
DESCRIPTION
    This is a function that will allow you to invoke a Task from within another Task in the 
    current build script.
    

RELATED LINKS
    Assert 
    Exec 
    FormatTaskName 
    Framework 
    Get-PSakeScriptTasks 
    Include 
    Invoke-psake 
    Properties 
    Task 
    TaskSetup 
    TaskTearDown 

REMARKS
    To see the examples, type: "get-help Invoke-Task -examples".
    For more information, type: "get-help Invoke-Task -detailed".
    For technical information, type: "get-help Invoke-Task -full".
    For online help, type: "get-help Invoke-Task -online"



```


Review all the ways you can call Get-ExecutionPolicy

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
Get-ExecutionPolicy
```

Output:

```
RemoteSigned

```


Command:

``` powershell
Get-Help Get-ExecutionPolicy
```

Output:

```

NAME
    Get-ExecutionPolicy
    
SYNOPSIS
    Gets the execution policies for the current session.
    
    
SYNTAX
    Get-ExecutionPolicy [[-Scope] {Process | CurrentUser | LocalMachine | UserPolicy | MachinePolicy}] [-List] [<CommonParameters>]
    
    
DESCRIPTION
    The Get-ExecutionPolicy cmdlet gets the execution policies for the current session.
    
    The execution policy is determined by execution policies that you set by using Set-ExecutionPolicy and the Group Policy settings for the Windows PowerShell execution policy. The default value is Restricted.
    
    Without parameters, Get-ExecutionPolicy gets the execution policy that is effective in the session. You can use the List parameter to get all execution policies that affect the session or the Scope parameter to get the execution policy for a particular scope.
    
    For more information, see about_Execution_Policies (http://go.microsoft.com/fwlink/?LinkID=135170).
    

RELATED LINKS
    Online Version: http://go.microsoft.com/fwlink/?LinkId=821714
    Get-AuthenticodeSignature 
    Set-AuthenticodeSignature 
    Set-ExecutionPolicy 

REMARKS
    To see the examples, type: "get-help Get-ExecutionPolicy -examples".
    For more information, type: "get-help Get-ExecutionPolicy -detailed".
    For technical information, type: "get-help Get-ExecutionPolicy -full".
    For online help, type: "get-help Get-ExecutionPolicy -online"



```


Command:

``` powershell
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process
```


Command:

``` powershell
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope LocalMachine
```


Command:

``` powershell
pwsh /?
```


Command:

``` powershell
Get-ExecutionPolicy
```

Output:

```
Bypass

```


Command:

``` powershell
Get-ExecutionPolicy -List
```

Output:

```

        Scope ExecutionPolicy
        ----- ---------------
MachinePolicy       Undefined
   UserPolicy       Undefined
      Process          Bypass
  CurrentUser       Undefined
 LocalMachine    RemoteSigned



```


Command:

``` powershell
Get-ExecutionPolicy -Verbose
```

Output:

```
Bypass

```


Command:

``` powershell
Get-ExecutionPolicy -Verbose -List
```

Output:

```

        Scope ExecutionPolicy
        ----- ---------------
MachinePolicy       Undefined
   UserPolicy       Undefined
      Process          Bypass
  CurrentUser       Undefined
 LocalMachine    RemoteSigned



```


Command:

``` powershell
Get-ExecutionPolicy -Scope Process
```

Output:

```
Bypass

```


Command:

``` powershell
Get-ExecutionPolicy -Scope LocalMachine
```

Output:

```
RemoteSigned

```


Command:

``` powershell
Get-Command *ExecutionPolicy*
```

Output:

```

CommandType     Name                                               Version    Source         
-----------     ----                                               -------    ------         
Cmdlet          Get-ExecutionPolicy                                3.0.0.0    Microsoft.Po...
Cmdlet          Set-ExecutionPolicy                                3.0.0.0    Microsoft.Po...



```


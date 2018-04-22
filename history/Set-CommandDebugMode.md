Attempting to explain Set-CommandDebugMode without any good examples

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
Get-Help Set-CommandDebugMode
```

Output:

```

NAME
    Set-CommandDebugMode
    
SYNOPSIS
    Sets the current debug mode for a command.
    
    
SYNTAX
    Set-CommandDebugMode [[-Name] <String[]>] [[-Module] <String[]>] [-DebuggerHidden] [-DebuggerStepThrough] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    The Set-CommandDebugMode command sets the current debug mode for a command. Debug modes include DebuggerHidden and DebuggerStepThrough.
    

RELATED LINKS
    Get-CommandDebugMode 
    Get-Command 

REMARKS
    To see the examples, type: "get-help Set-CommandDebugMode -examples".
    For more information, type: "get-help Set-CommandDebugMode -detailed".
    For technical information, type: "get-help Set-CommandDebugMode -full".
    For online help, type: "get-help Set-CommandDebugMode -online"



```


Command:

``` powershell
Get-Help Set-CommandDebugMode
```

Output:

```

NAME
    Set-CommandDebugMode
    
SYNOPSIS
    Sets the current debug mode for a command.
    
    
SYNTAX
    Set-CommandDebugMode [[-Name] <String[]>] [[-Module] <String[]>] [-DebuggerHidden] [-DebuggerStepThrough] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    The Set-CommandDebugMode command sets the current debug mode for a command. Debug modes include DebuggerHidden and DebuggerStepThrough.
    

RELATED LINKS
    Get-CommandDebugMode 
    Get-Command 

REMARKS
    To see the examples, type: "get-help Set-CommandDebugMode -examples".
    For more information, type: "get-help Set-CommandDebugMode -detailed".
    For technical information, type: "get-help Set-CommandDebugMode -full".
    For online help, type: "get-help Set-CommandDebugMode -online"



```


Command:

``` powershell
Get-Help Set-CommandDebugMode
```

Output:

```

NAME
    Set-CommandDebugMode
    
SYNOPSIS
    Sets the current debug mode for a command.
    
    
SYNTAX
    Set-CommandDebugMode [[-Name] <String[]>] [[-Module] <String[]>] [-DebuggerHidden] [-DebuggerStepThrough] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    The Set-CommandDebugMode command sets the current debug mode for a command. Debug modes include DebuggerHidden and DebuggerStepThrough.
    

RELATED LINKS
    Get-CommandDebugMode 
    Get-Command 

REMARKS
    To see the examples, type: "get-help Set-CommandDebugMode -examples".
    For more information, type: "get-help Set-CommandDebugMode -detailed".
    For technical information, type: "get-help Set-CommandDebugMode -full".
    For online help, type: "get-help Set-CommandDebugMode -online"



```


Command:

``` powershell
Get-command Set-CommandDebugMode
```

Output:

```

CommandType     Name                                               Version    Source      
-----------     ----                                               -------    ------      
Function        Set-CommandDebugMode                               1.0.3.14   DebugPx     



```


Command:

``` powershell
Get-command Set-CommandDebugMode -Syntax
```

Output:

```

Set-CommandDebugMode [[-Name] <string[]>] [[-Module] <string[]>] [-DebuggerHidden] [-DebuggerStepThrough] [-WhatIf] [-Confirm] [<CommonParameters>]


```


Command:

``` powershell
Set-CommandDebugMode ConvertTo-Breakpoint -DebuggerHidden
```


Command:

``` powershell
Set-CommandDebugMode ConvertTo-Breakpoint -DebuggerHidden:$false
```


Command:

``` powershell
Set-CommandDebugMode ConvertTo-Breakpoint -DebuggerHidden:$false -verbose
```


Command:

``` powershell
Get-Content Function:\ConvertTo-Breakpoint
```

Output:

```

    <#
        .DESCRIPTION
        Converts an errorrecord to a breakpoint

        .Example 
        $error[0] | ConvertTo-Breakpoint

        .Example 
        $error[0] | ConvertTo-Breakpoint -All
    #>
    [CmdletBinding(SupportsShouldProcess)]
    param(
        # The error record
        [parameter(
            Mandatory,
            Position = 0,
            ValueFromPipeline
        )]
        [Alias('InputObject')]
        $ErrorRecord,

        # Sets breakpoints on the entire stack
        [switch]
        $All
    )
    begin
    {
        $breakpointPattern = 'at .+, (?<Script>.+): line (?<Line>\d+)'
    }
    process
    {
        foreach($node in $ErrorRecord)
        {
            $trace = $node.ScriptStackTrace
            if(-not [string]::IsNullOrEmpty($trace))
            {
                $lineList = $trace -split [System.Environment]::NewLine
                foreach($line in $lineList)
                {
                    if($line -match $breakpointPattern)
                    {
                        if($PSCmdlet.ShouldProcess($line))
                        {
                            $breakpoint = @{
                                Script = $matches.Script
                                Line = $matches.Line
                            }
                            Set-PSBreakpoint @breakpoint
                        }
                        if(-Not $PSBoundParameters.All)
                        {
                            break
                        }
                    }
                }
            }
         }
    }


```


Command:

``` powershell
Set-CommandDebugMode ConvertTo-Breakpoint -DebuggerHidden -verbose
```


Command:

``` powershell
Get-Content Function:\ConvertTo-Breakpoint
```

Output:

```

    <#
        .DESCRIPTION
        Converts an errorrecord to a breakpoint

        .Example 
        $error[0] | ConvertTo-Breakpoint

        .Example 
        $error[0] | ConvertTo-Breakpoint -All
    #>
    [CmdletBinding(SupportsShouldProcess)]
    param(
        # The error record
        [parameter(
            Mandatory,
            Position = 0,
            ValueFromPipeline
        )]
        [Alias('InputObject')]
        $ErrorRecord,

        # Sets breakpoints on the entire stack
        [switch]
        $All
    )
    begin
    {
        $breakpointPattern = 'at .+, (?<Script>.+): line (?<Line>\d+)'
    }
    process
    {
        foreach($node in $ErrorRecord)
        {
            $trace = $node.ScriptStackTrace
            if(-not [string]::IsNullOrEmpty($trace))
            {
                $lineList = $trace -split [System.Environment]::NewLine
                foreach($line in $lineList)
                {
                    if($line -match $breakpointPattern)
                    {
                        if($PSCmdlet.ShouldProcess($line))
                        {
                            $breakpoint = @{
                                Script = $matches.Script
                                Line = $matches.Line
                            }
                            Set-PSBreakpoint @breakpoint
                        }
                        if(-Not $PSBoundParameters.All)
                        {
                            break
                        }
                    }
                }
            }
         }
    }


```


Command:

``` powershell
Set-CommandDebugMode ConvertTo-Breakpoint -DebuggerHidden -DebuggerStepThrough
```


Command:

``` powershell
Get-Content Function:\ConvertTo-Breakpoint
```

Output:

```

    <#
        .DESCRIPTION
        Converts an errorrecord to a breakpoint

        .Example 
        $error[0] | ConvertTo-Breakpoint

        .Example 
        $error[0] | ConvertTo-Breakpoint -All
    #>
    [CmdletBinding(SupportsShouldProcess)]
    param(
        # The error record
        [parameter(
            Mandatory,
            Position = 0,
            ValueFromPipeline
        )]
        [Alias('InputObject')]
        $ErrorRecord,

        # Sets breakpoints on the entire stack
        [switch]
        $All
    )
    begin
    {
        $breakpointPattern = 'at .+, (?<Script>.+): line (?<Line>\d+)'
    }
    process
    {
        foreach($node in $ErrorRecord)
        {
            $trace = $node.ScriptStackTrace
            if(-not [string]::IsNullOrEmpty($trace))
            {
                $lineList = $trace -split [System.Environment]::NewLine
                foreach($line in $lineList)
                {
                    if($line -match $breakpointPattern)
                    {
                        if($PSCmdlet.ShouldProcess($line))
                        {
                            $breakpoint = @{
                                Script = $matches.Script
                                Line = $matches.Line
                            }
                            Set-PSBreakpoint @breakpoint
                        }
                        if(-Not $PSBoundParameters.All)
                        {
                            break
                        }
                    }
                }
            }
         }
    }


```


Command:

``` powershell
Get-Command *debugmode*
```

Output:

```

CommandType     Name                                               Version    Source      
-----------     ----                                               -------    ------      
Function        Get-CommandDebugMode                               1.0.3.14   DebugPx     
Function        Set-CommandDebugMode                               1.0.3.14   DebugPx     



```


Command:

``` powershell
Get-CommandDebugMode ConvertTo-Breakpoint
```

Output:

```

Name                 DebuggerHidden DebuggerStepThrough
----                 -------------- -------------------
ConvertTo-Breakpoint           True                True



```


Command:

``` powershell
Set-CommandDebugMode ConvertTo-Breakpoint -DebuggerHidden -DebuggerStepThrough:$false
```


Command:

``` powershell
Get-CommandDebugMode ConvertTo-Breakpoint
```

Output:

```

Name                 DebuggerHidden DebuggerStepThrough
----                 -------------- -------------------
ConvertTo-Breakpoint           True               False



```


Command:

``` powershell
Get-Content Function:\ConvertTo-Breakpoint
```

Output:

```

    <#
        .DESCRIPTION
        Converts an errorrecord to a breakpoint

        .Example 
        $error[0] | ConvertTo-Breakpoint

        .Example 
        $error[0] | ConvertTo-Breakpoint -All
    #>
    [CmdletBinding(SupportsShouldProcess)]
    param(
        # The error record
        [parameter(
            Mandatory,
            Position = 0,
            ValueFromPipeline
        )]
        [Alias('InputObject')]
        $ErrorRecord,

        # Sets breakpoints on the entire stack
        [switch]
        $All
    )
    begin
    {
        $breakpointPattern = 'at .+, (?<Script>.+): line (?<Line>\d+)'
    }
    process
    {
        foreach($node in $ErrorRecord)
        {
            $trace = $node.ScriptStackTrace
            if(-not [string]::IsNullOrEmpty($trace))
            {
                $lineList = $trace -split [System.Environment]::NewLine
                foreach($line in $lineList)
                {
                    if($line -match $breakpointPattern)
                    {
                        if($PSCmdlet.ShouldProcess($line))
                        {
                            $breakpoint = @{
                                Script = $matches.Script
                                Line = $matches.Line
                            }
                            Set-PSBreakpoint @breakpoint
                        }
                        if(-Not $PSBoundParameters.All)
                        {
                            break
                        }
                    }
                }
            }
         }
    }


```


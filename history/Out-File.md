Review Out-File and other ways to save data

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
Get-Command N:
```

Output:

```

CommandType     Name                                               Version    Source         
-----------     ----                                               -------    ------         
Function        N:                                                                           



```


Command:

``` powershell
Get-PSDrive
```

Output:

```

Name           Used (GB)     Free (GB) Provider      Root                                Curr
                                                                                         entL
                                                                                         ocat
                                                                                          ion
----           ---------     --------- --------      ----                                ----
Alias                                  Alias                                                 
C                 148.45        327.25 FileSystem    C:\                                 ...d
Cert                                   Certificate   \                                       
Env                                    Environment                                           
Function                               Function                                              
HKCU                                   Registry      HKEY_CURRENT_USER                       
HKLM                                   Registry      HKEY_LOCAL_MACHINE                      
Variable                               Variable                                              
WSMan                                  WSMan                                                 



```


Command:

``` powershell
N:
```


Command:

``` powershell
H:
```


Command:

``` powershell
HKCU:
```


Command:

``` powershell
cd HKCU:
```


Command:

``` powershell
cd N:
```


Command:

``` powershell
CD c:
```


Command:

``` powershell
Get-RandomCommand
```


Command:

``` powershell
Get-Help Out-File
```

Output:

```

NAME
    Out-File
    
SYNOPSIS
    Sends output to a file.
    
    
SYNTAX
    Out-File [-FilePath] <String> [[-Encoding] {unknown | string | unicode | bigendianunicode | utf8 | utf7 | utf32 | ascii | default | oem}] [-Append] [-Confirm] [-Force] [-InputObject <PSObject>] [-NoClobber] [-NoNewline] [-WhatIf] [-Width <Int32>] [<CommonParameters>]
    
    Out-File [[-Encoding] {unknown | string | unicode | bigendianunicode | utf8 | utf7 | utf32 | ascii | default | oem}] [-Append] [-Confirm] [-Force] [-InputObject <PSObject>] -LiteralPath <String> [-NoClobber] [-NoNewline] [-WhatIf] [-Width <Int32>] [<CommonParameters>]
    
    
DESCRIPTION
    The `Out-File` cmdlet sends output to a file. You can use this cmdlet instead of the redirection operator (>) when you need to use its parameters.
    

RELATED LINKS
    Online Version: http://go.microsoft.com/fwlink/?LinkId=821839
    Out-Default 
    Out-GridView 
    Out-Host 
    Out-Null 
    Out-Printer 
    Out-String 
    Tee-Object 

REMARKS
    To see the examples, type: "get-help Out-File -examples".
    For more information, type: "get-help Out-File -detailed".
    For technical information, type: "get-help Out-File -full".
    For online help, type: "get-help Out-File -online"



```


Command:

``` powershell
Get-PSDrive
```

Output:

```

Name           Used (GB)     Free (GB) Provider      Root                                Curr
                                                                                         entL
                                                                                         ocat
                                                                                          ion
----           ---------     --------- --------      ----                                ----
Alias                                  Alias                                                 
C                 148.45        327.25 FileSystem    C:\                                 ...d
Cert                                   Certificate   \                                       
Env                                    Environment                                           
Function                               Function                                              
HKCU                                   Registry      HKEY_CURRENT_USER                       
HKLM                                   Registry      HKEY_LOCAL_MACHINE                      
Variable                               Variable                                              
WSMan                                  WSMan                                                 



```


Command:

``` powershell
Get-PSDrive | Out-File test.txt
```


Command:

``` powershell
code .\test.txt
```


Command:

``` powershell
Get-PSDrive | Set-Content test2.txt
```


Command:

``` powershell
code .\test2.txt
```


Command:

``` powershell
Get-PSDrive | Export-Csv test3.csv
```


Command:

``` powershell
.\test3.csv
```


Command:

``` powershell
$data = Get-PSDrive
```


Command:

``` powershell
$data | select *
```

Output:

```


Used                   : 
Free                   : 
CurrentLocation        : 
Name                   : Alias
Provider               : Microsoft.PowerShell.Core\Alias
Root                   : 
Description            : Drive that contains a view of the aliases stored in a session state
MaximumSize            : 
Credential             : System.Management.Automation.PSCredential
DisplayRoot            : 
VolumeSeparatedByColon : True

Used                   : 159392456704
Free                   : 351386734592
CurrentLocation        : workspace\Get-RandomCommand
Name                   : C
Provider               : Microsoft.PowerShell.Core\FileSystem
Root                   : C:\
Description            : Local Disk
MaximumSize            : 
Credential             : System.Management.Automation.PSCredential
DisplayRoot            : 
VolumeSeparatedByColon : True

Used                   : 
Free                   : 
CurrentLocation        : 
Name                   : Cert
Provider               : Microsoft.PowerShell.Security\Certificate
Root                   : \
Description            : X509 Certificate Provider
MaximumSize            : 
Credential             : System.Management.Automation.PSCredential
DisplayRoot            : 
VolumeSeparatedByColon : True

Used                   : 
Free                   : 
CurrentLocation        : 
Name                   : Env
Provider               : Microsoft.PowerShell.Core\Environment
Root                   : 
Description            : Drive that contains a view of the environment variables for the process
MaximumSize            : 
Credential             : System.Management.Automation.PSCredential
DisplayRoot            : 
VolumeSeparatedByColon : True

Used                   : 
Free                   : 
CurrentLocation        : 
Name                   : Function
Provider               : Microsoft.PowerShell.Core\Function
Root                   : 
Description            : Drive that contains a view of the functions stored in a session state
MaximumSize            : 
Credential             : System.Management.Automation.PSCredential
DisplayRoot            : 
VolumeSeparatedByColon : True

Used                   : 
Free                   : 
CurrentLocation        : 
Name                   : HKCU
Provider               : Microsoft.PowerShell.Core\Registry
Root                   : HKEY_CURRENT_USER
Description            : The software settings for the current user
MaximumSize            : 
Credential             : System.Management.Automation.PSCredential
DisplayRoot            : 
VolumeSeparatedByColon : True

Used                   : 
Free                   : 
CurrentLocation        : 
Name                   : HKLM
Provider               : Microsoft.PowerShell.Core\Registry
Root                   : HKEY_LOCAL_MACHINE
Description            : The configuration settings for the local computer
MaximumSize            : 
Credential             : System.Management.Automation.PSCredential
DisplayRoot            : 
VolumeSeparatedByColon : True

Used                   : 
Free                   : 
CurrentLocation        : 
Name                   : Variable
Provider               : Microsoft.PowerShell.Core\Variable
Root                   : 
Description            : Drive that contains a view of those variables stored in a session state
MaximumSize            : 
Credential             : System.Management.Automation.PSCredential
DisplayRoot            : 
VolumeSeparatedByColon : True

Used                   : 
Free                   : 
CurrentLocation        : 
Name                   : WSMan
Provider               : Microsoft.WSMan.Management\WSMan
Root                   : 
Description            : Root of WsMan Config Storage.
MaximumSize            : 
Credential             : System.Management.Automation.PSCredential
DisplayRoot            : 
VolumeSeparatedByColon : True




```


Command:

``` powershell
$daata
```


Command:

``` powershell
$data
```

Output:

```

Name           Used (GB)     Free (GB) Provider      Root                                Curr
                                                                                         entL
                                                                                         ocat
                                                                                          ion
----           ---------     --------- --------      ----                                ----
Alias                                  Alias                                                 
C                 148.45        327.25 FileSystem    C:\                                 ...d
Cert                                   Certificate   \                                       
Env                                    Environment                                           
Function                               Function                                              
HKCU                                   Registry      HKEY_CURRENT_USER                       
HKLM                                   Registry      HKEY_LOCAL_MACHINE                      
Variable                               Variable                                              
WSMan                                  WSMan                                                 



```


Command:

``` powershell
$data | select Name, Root
```

Output:

```

Name     Root              
----     ----              
Alias                      
C        C:\               
Cert     \                 
Env                        
Function                   
HKCU     HKEY_CURRENT_USER 
HKLM     HKEY_LOCAL_MACHINE
Variable                   
WSMan                      



```


Command:

``` powershell
$data | select Name, Root | Export-Csv .\test4.csv
```


Command:

``` powershell
.\test4.csv
```


Command:

``` powershell
$data | select Name, Root | ConvertTo-Json
```

Output:

```
[
  {
    "Name": "Alias",
    "Root": ""
  },
  {
    "Name": "C",
    "Root": "C:\\"
  },
  {
    "Name": "Cert",
    "Root": "\\"
  },
  {
    "Name": "Env",
    "Root": ""
  },
  {
    "Name": "Function",
    "Root": ""
  },
  {
    "Name": "HKCU",
    "Root": "HKEY_CURRENT_USER"
  },
  {
    "Name": "HKLM",
    "Root": "HKEY_LOCAL_MACHINE"
  },
  {
    "Name": "Variable",
    "Root": ""
  },
  {
    "Name": "WSMan",
    "Root": ""
  }
]

```


Command:

``` powershell
$data > test5.txt
```


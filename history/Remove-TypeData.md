Create an example that first uses Update-TypeData and then uses Remove-TypeData



Command:

``` powershell
Get-RandomCommand
```



Command:

``` powershell
start 'https://kevinmarquette.github.io'
```

Command:

``` powershell
ls
```

Output:

```


    Directory: C:\workspace\Get-RandomCommand


Mode                LastWriteTime         Length Name                                        
----                -------------         ------ ----                                        
d-----        4/14/2018   1:29 AM                .vscode                                     
-a----        4/14/2018   1:02 AM            296 Get-RandomCommand.ps1                       
-a----        4/14/2018   1:41 AM            769 Save-History.ps1                            
-a----        4/14/2018   2:14 AM            123 test.ps1                                    



```


Command:

``` powershell
ls | Get-Member
```

Output:

```


   TypeName: System.IO.DirectoryInfo

Name                      MemberType     Definition                                          
----                      ----------     ----------                                          
LinkType                  CodeProperty   System.String LinkType{get=GetLinkType;}            
Mode                      CodeProperty   System.String Mode{get=Mode;}                       
Target                    CodeProperty   System.Collections.Generic.IEnumerable`1[[System....
Create                    Method         void Create()                                       
CreateSubdirectory        Method         System.IO.DirectoryInfo CreateSubdirectory(string...
Delete                    Method         void Delete(), void Delete(bool recursive)          
EnumerateDirectories      Method         System.Collections.Generic.IEnumerable[System.IO....
EnumerateFiles            Method         System.Collections.Generic.IEnumerable[System.IO....
EnumerateFileSystemInfos  Method         System.Collections.Generic.IEnumerable[System.IO....
Equals                    Method         bool Equals(System.Object obj)                      
GetDirectories            Method         System.IO.DirectoryInfo[] GetDirectories(), Syste...
GetFiles                  Method         System.IO.FileInfo[] GetFiles(string searchPatter...
GetFileSystemInfos        Method         System.IO.FileSystemInfo[] GetFileSystemInfos(str...
GetHashCode               Method         int GetHashCode()                                   
GetLifetimeService        Method         System.Object GetLifetimeService()                  
GetObjectData             Method         void GetObjectData(System.Runtime.Serialization.S...
GetType                   Method         type GetType()                                      
InitializeLifetimeService Method         System.Object InitializeLifetimeService()           
MoveTo                    Method         void MoveTo(string destDirName)                     
Refresh                   Method         void Refresh()                                      
ToString                  Method         string ToString()                                   
PSChildName               NoteProperty   string PSChildName=.vscode                          
PSDrive                   NoteProperty   PSDriveInfo PSDrive=C                               
PSIsContainer             NoteProperty   bool PSIsContainer=True                             
PSParentPath              NoteProperty   string PSParentPath=Microsoft.PowerShell.Core\Fil...
PSPath                    NoteProperty   string PSPath=Microsoft.PowerShell.Core\FileSyste...
PSProvider                NoteProperty   ProviderInfo PSProvider=Microsoft.PowerShell.Core...
Attributes                Property       System.IO.FileAttributes Attributes {get;set;}      
CreationTime              Property       datetime CreationTime {get;set;}                    
CreationTimeUtc           Property       datetime CreationTimeUtc {get;set;}                 
Exists                    Property       bool Exists {get;}                                  
Extension                 Property       string Extension {get;}                             
FullName                  Property       string FullName {get;}                              
LastAccessTime            Property       datetime LastAccessTime {get;set;}                  
LastAccessTimeUtc         Property       datetime LastAccessTimeUtc {get;set;}               
LastWriteTime             Property       datetime LastWriteTime {get;set;}                   
LastWriteTimeUtc          Property       datetime LastWriteTimeUtc {get;set;}                
Name                      Property       string Name {get;}                                  
Parent                    Property       System.IO.DirectoryInfo Parent {get;}               
Root                      Property       System.IO.DirectoryInfo Root {get;}                 
BaseName                  ScriptProperty System.Object BaseName {get=$this.Name;}            


   TypeName: System.IO.FileInfo

Name                      MemberType     Definition                                          
----                      ----------     ----------                                          
LinkType                  CodeProperty   System.String LinkType{get=GetLinkType;}            
Mode                      CodeProperty   System.String Mode{get=Mode;}                       
Target                    CodeProperty   System.Collections.Generic.IEnumerable`1[[System....
AppendText                Method         System.IO.StreamWriter AppendText()                 
CopyTo                    Method         System.IO.FileInfo CopyTo(string destFileName), S...
Create                    Method         System.IO.FileStream Create()                       
CreateText                Method         System.IO.StreamWriter CreateText()                 
Decrypt                   Method         void Decrypt()                                      
Delete                    Method         void Delete()                                       
Encrypt                   Method         void Encrypt()                                      
Equals                    Method         bool Equals(System.Object obj)                      
GetHashCode               Method         int GetHashCode()                                   
GetLifetimeService        Method         System.Object GetLifetimeService()                  
GetObjectData             Method         void GetObjectData(System.Runtime.Serialization.S...
GetType                   Method         type GetType()                                      
InitializeLifetimeService Method         System.Object InitializeLifetimeService()           
MoveTo                    Method         void MoveTo(string destFileName)                    
Open                      Method         System.IO.FileStream Open(System.IO.FileMode mode...
OpenRead                  Method         System.IO.FileStream OpenRead()                     
OpenText                  Method         System.IO.StreamReader OpenText()                   
OpenWrite                 Method         System.IO.FileStream OpenWrite()                    
Refresh                   Method         void Refresh()                                      
Replace                   Method         System.IO.FileInfo Replace(string destinationFile...
ToString                  Method         string ToString()                                   
PSChildName               NoteProperty   string PSChildName=Get-RandomCommand.ps1            
PSDrive                   NoteProperty   PSDriveInfo PSDrive=C                               
PSIsContainer             NoteProperty   bool PSIsContainer=False                            
PSParentPath              NoteProperty   string PSParentPath=Microsoft.PowerShell.Core\Fil...
PSPath                    NoteProperty   string PSPath=Microsoft.PowerShell.Core\FileSyste...
PSProvider                NoteProperty   ProviderInfo PSProvider=Microsoft.PowerShell.Core...
Attributes                Property       System.IO.FileAttributes Attributes {get;set;}      
CreationTime              Property       datetime CreationTime {get;set;}                    
CreationTimeUtc           Property       datetime CreationTimeUtc {get;set;}                 
Directory                 Property       System.IO.DirectoryInfo Directory {get;}            
DirectoryName             Property       string DirectoryName {get;}                         
Exists                    Property       bool Exists {get;}                                  
Extension                 Property       string Extension {get;}                             
FullName                  Property       string FullName {get;}                              
IsReadOnly                Property       bool IsReadOnly {get;set;}                          
LastAccessTime            Property       datetime LastAccessTime {get;set;}                  
LastAccessTimeUtc         Property       datetime LastAccessTimeUtc {get;set;}               
LastWriteTime             Property       datetime LastWriteTime {get;set;}                   
LastWriteTimeUtc          Property       datetime LastWriteTimeUtc {get;set;}                
Length                    Property       long Length {get;}                                  
Name                      Property       string Name {get;}                                  
BaseName                  ScriptProperty System.Object BaseName {get=if ($this.Extension.L...
VersionInfo               ScriptProperty System.Object VersionInfo {get=[System.Diagnostic...



```


Command:

``` powershell
ls
```

Output:

```


    Directory: C:\workspace\Get-RandomCommand


Mode                LastWriteTime         Length Name                                        
----                -------------         ------ ----                                        
d-----        4/14/2018   1:29 AM                .vscode                                     
-a----        4/14/2018   1:02 AM            296 Get-RandomCommand.ps1                       
-a----        4/14/2018   1:41 AM            769 Save-History.ps1                            
-a----        4/14/2018   2:14 AM            123 test.ps1                                    



```


Command:

``` powershell
Get-ChildItem
```

Output:

```


    Directory: C:\workspace\Get-RandomCommand


Mode                LastWriteTime         Length Name                                        
----                -------------         ------ ----                                        
d-----        4/14/2018   1:29 AM                .vscode                                     
-a----        4/14/2018   1:02 AM            296 Get-RandomCommand.ps1                       
-a----        4/14/2018   1:41 AM            769 Save-History.ps1                            
-a----        4/14/2018   2:14 AM            123 test.ps1                                    



```


Command:

``` powershell
$TypeData = @{
    TypeName = 'System.IO.DirectoryInfo'
    DefaultDisplayPropertySet = 'Name','FullName'
}
Update-TypeData @TypeData
```


Command:

``` powershell
Get-ChildItem
```

Output:

```


    Directory: C:\workspace\Get-RandomCommand


Mode                LastWriteTime         Length Name                                        
----                -------------         ------ ----                                        
d-----        4/14/2018   1:29 AM                .vscode                                     
-a----        4/14/2018   1:02 AM            296 Get-RandomCommand.ps1                       
-a----        4/14/2018   1:41 AM            769 Save-History.ps1                            
-a----        4/14/2018   2:14 AM            123 test.ps1                                    



```


Command:

``` powershell
$TypeData = @{
    TypeName = 'System.IO.DirectoryInfo'
    DefaultDisplayPropertySet = 'Name','FullName'
}
Update-TypeData @TypeData
```


Command:

``` powershell
Get-ChildItem
```

Output:

```


    Directory: C:\workspace\Get-RandomCommand


Mode                LastWriteTime         Length Name                                        
----                -------------         ------ ----                                        
d-----        4/14/2018   1:29 AM                .vscode                                     
-a----        4/14/2018   1:02 AM            296 Get-RandomCommand.ps1                       
-a----        4/14/2018   1:41 AM            769 Save-History.ps1                            
-a----        4/14/2018   2:14 AM            123 test.ps1                                    



```


Command:

``` powershell
$obj = [pscustomobject]{
    PSTypeName = 'MyObject'
    Name = 'test'
    FullName = 'C:\workspace\test.ps1',
    Other = 'data'
}
```


Command:

``` powershell
$obj
```

Output:

```

    PSTypeName = 'MyObject'
    Name = 'test'
    FullName = 'C:\workspace\test.ps1',
    Other = 'data'


```


Command:

``` powershell
$obj = [pscustomobject]@{
    PSTypeName = 'MyObject'
    Name = 'test'
    FullName = 'C:\workspace\test.ps1'
    Other = 'data'
}
```


Command:

``` powershell
$obj
```

Output:

```

Name FullName              Other
---- --------              -----
test C:\workspace\test.ps1 data 



```


Command:

``` powershell
$TypeData = @{
    TypeName = 'MyObject'
    DefaultDisplayPropertySet = 'Name','FullName'
}
Update-TypeData @TypeData
```


Command:

``` powershell
$obj
```

Output:

```

Name FullName              Other
---- --------              -----
test C:\workspace\test.ps1 data 



```


Command:

``` powershell
$obj | select *
```

Output:

```

Name FullName              Other
---- --------              -----
test C:\workspace\test.ps1 data 



```


Command:

``` powershell
$obj | fl *
```

Output:

```


Name     : test
FullName : C:\workspace\test.ps1
Other    : data




```


Command:

``` powershell
$obj
```

Output:

```

Name FullName              Other
---- --------              -----
test C:\workspace\test.ps1 data 



```


Command:

``` powershell
Remove-TypeData -TypeName MyObject
```


Command:

``` powershell
$obj
```

Output:

```

Name FullName              Other
---- --------              -----
test C:\workspace\test.ps1 data 



```


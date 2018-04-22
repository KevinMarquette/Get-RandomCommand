

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
get-command space
```

Output:

```

CommandType     Name                                               Version    Source                            
-----------     ----                                               -------    ------                            
Function        space                                              1.8.3      NameIT                            



```


Command:

``` powershell
space
```

Output:

```
 

```


Command:

``` powershell
Get-Help space
```

Output:

```

NAME
    space
    
SYNTAX
    space [[-length] <int>]  
    

ALIASES
    None
    

REMARKS
    None




```


Command:

``` powershell
"--$(space -length 10)--"
```

Output:

```
--          --

```


Command:

``` powershell
Get-RandomCommand
```


Command:

``` powershell
Get-TimeZone
```

Output:

```


Id                         : Pacific Standard Time
DisplayName                : (UTC-08:00) Pacific Time (US & Canada)
StandardName               : Pacific Standard Time
DaylightName               : Pacific Daylight Time
BaseUtcOffset              : -08:00:00
SupportsDaylightSavingTime : True




```


Command:

``` powershell
Get-TimeZone | Get-Member
```

Output:

```


   TypeName: System.TimeZoneInfo

Name                       MemberType Definition                                                                
----                       ---------- ----------                                                                
Equals                     Method     bool Equals(System.TimeZoneInfo other), bool Equals(System.Object obj),...
GetAdjustmentRules         Method     System.TimeZoneInfo+AdjustmentRule[] GetAdjustmentRules()                 
GetAmbiguousTimeOffsets    Method     timespan[] GetAmbiguousTimeOffsets(System.DateTimeOffset dateTimeOffset...
GetHashCode                Method     int GetHashCode()                                                         
GetObjectData              Method     void ISerializable.GetObjectData(System.Runtime.Serialization.Serializa...
GetType                    Method     type GetType()                                                            
GetUtcOffset               Method     timespan GetUtcOffset(System.DateTimeOffset dateTimeOffset), timespan G...
HasSameRules               Method     bool HasSameRules(System.TimeZoneInfo other)                              
IsAmbiguousTime            Method     bool IsAmbiguousTime(System.DateTimeOffset dateTimeOffset), bool IsAmbi...
IsDaylightSavingTime       Method     bool IsDaylightSavingTime(System.DateTimeOffset dateTimeOffset), bool I...
IsInvalidTime              Method     bool IsInvalidTime(datetime dateTime)                                     
OnDeserialization          Method     void IDeserializationCallback.OnDeserialization(System.Object sender)     
ToSerializedString         Method     string ToSerializedString()                                               
ToString                   Method     string ToString()                                                         
BaseUtcOffset              Property   timespan BaseUtcOffset {get;}                                             
DaylightName               Property   string DaylightName {get;}                                                
DisplayName                Property   string DisplayName {get;}                                                 
Id                         Property   string Id {get;}                                                          
StandardName               Property   string StandardName {get;}                                                
SupportsDaylightSavingTime Property   bool SupportsDaylightSavingTime {get;}                                    



```


Command:

``` powershell
$timezone = Get-TimeZone
```


Command:

``` powershell
$timezone.GetUtcOffset()
```


Command:

``` powershell
$timezone.HasSameRules($timezone)
```

Output:

```
True

```


Command:

``` powershell
Get-TimeZone -ListAvailable
```


Command:

``` powershell
Get-TimeZone -ListAvailable | ft
```

Output:

```

Id                              DisplayName                                                   StandardName      
--                              -----------                                                   ------------      
Dateline Standard Time          (UTC-12:00) International Date Line West                      Dateline Standa...
UTC-11                          (UTC-11:00) Coordinated Universal Time-11                     UTC-11            
Aleutian Standard Time          (UTC-10:00) Aleutian Islands                                  Aleutian Standa...
Hawaiian Standard Time          (UTC-10:00) Hawaii                                            Hawaiian Standa...
Marquesas Standard Time         (UTC-09:30) Marquesas Islands                                 Marquesas Stand...
Alaskan Standard Time           (UTC-09:00) Alaska                                            Alaskan Standar...
UTC-09                          (UTC-09:00) Coordinated Universal Time-09                     UTC-09            
Pacific Standard Time (Mexico)  (UTC-08:00) Baja California                                   Pacific Standar...
UTC-08                          (UTC-08:00) Coordinated Universal Time-08                     UTC-08            
Pacific Standard Time           (UTC-08:00) Pacific Time (US & Canada)                        Pacific Standar...
US Mountain Standard Time       (UTC-07:00) Arizona                                           US Mountain Sta...
Mountain Standard Time (Mexico) (UTC-07:00) Chihuahua, La Paz, Mazatlan                       Mountain Standa...
Mountain Standard Time          (UTC-07:00) Mountain Time (US & Canada)                       Mountain Standa...
Central America Standard Time   (UTC-06:00) Central America                                   Central America...
Central Standard Time           (UTC-06:00) Central Time (US & Canada)                        Central Standar...
Easter Island Standard Time     (UTC-06:00) Easter Island                                     Easter Island S...
Central Standard Time (Mexico)  (UTC-06:00) Guadalajara, Mexico City, Monterrey               Central Standar...
Canada Central Standard Time    (UTC-06:00) Saskatchewan                                      Canada Central ...
SA Pacific Standard Time        (UTC-05:00) Bogota, Lima, Quito, Rio Branco                   SA Pacific Stan...
Eastern Standard Time (Mexico)  (UTC-05:00) Chetumal                                          Eastern Standar...
Eastern Standard Time           (UTC-05:00) Eastern Time (US & Canada)                        Eastern Standar...
Haiti Standard Time             (UTC-05:00) Haiti                                             Haiti Standard ...
Cuba Standard Time              (UTC-05:00) Havana                                            Cuba Standard Time
US Eastern Standard Time        (UTC-05:00) Indiana (East)                                    US Eastern Stan...
Turks And Caicos Standard Time  (UTC-05:00) Turks and Caicos                                  Turks and Caico...
Paraguay Standard Time          (UTC-04:00) Asuncion                                          Paraguay Standa...
Atlantic Standard Time          (UTC-04:00) Atlantic Time (Canada)                            Atlantic Standa...
Venezuela Standard Time         (UTC-04:00) Caracas                                           Venezuela Stand...
Central Brazilian Standard Time (UTC-04:00) Cuiaba                                            Central Brazili...
SA Western Standard Time        (UTC-04:00) Georgetown, La Paz, Manaus, San Juan              SA Western Stan...
Pacific SA Standard Time        (UTC-04:00) Santiago                                          Pacific SA Stan...
Newfoundland Standard Time      (UTC-03:30) Newfoundland                                      Newfoundland St...
Tocantins Standard Time         (UTC-03:00) Araguaina                                         Tocantins Stand...
E. South America Standard Time  (UTC-03:00) Brasilia                                          E. South Americ...
SA Eastern Standard Time        (UTC-03:00) Cayenne, Fortaleza                                SA Eastern Stan...
Argentina Standard Time         (UTC-03:00) City of Buenos Aires                              Argentina Stand...
Greenland Standard Time         (UTC-03:00) Greenland                                         Greenland Stand...
Montevideo Standard Time        (UTC-03:00) Montevideo                                        Montevideo Stan...
Magallanes Standard Time        (UTC-03:00) Punta Arenas                                      Magallanes Stan...
Saint Pierre Standard Time      (UTC-03:00) Saint Pierre and Miquelon                         Saint Pierre St...
Bahia Standard Time             (UTC-03:00) Salvador                                          Bahia Standard ...
UTC-02                          (UTC-02:00) Coordinated Universal Time-02                     UTC-02            
Mid-Atlantic Standard Time      (UTC-02:00) Mid-Atlantic - Old                                Mid-Atlantic St...
Azores Standard Time            (UTC-01:00) Azores                                            Azores Standard...
Cape Verde Standard Time        (UTC-01:00) Cabo Verde Is.                                    Cabo Verde Stan...
UTC                             (UTC) Coordinated Universal Time                              Coordinated Uni...
Morocco Standard Time           (UTC+00:00) Casablanca                                        Morocco Standar...
GMT Standard Time               (UTC+00:00) Dublin, Edinburgh, Lisbon, London                 GMT Standard Time 
Greenwich Standard Time         (UTC+00:00) Monrovia, Reykjavik                               Greenwich Stand...
W. Europe Standard Time         (UTC+01:00) Amsterdam, Berlin, Bern, Rome, Stockholm, Vienna  W. Europe Stand...
Central Europe Standard Time    (UTC+01:00) Belgrade, Bratislava, Budapest, Ljubljana, Prague Central Europe ...
Romance Standard Time           (UTC+01:00) Brussels, Copenhagen, Madrid, Paris               Romance Standar...
Sao Tome Standard Time          (UTC+01:00) Sao Tome                                          Sao Tome Standa...
Central European Standard Time  (UTC+01:00) Sarajevo, Skopje, Warsaw, Zagreb                  Central Europea...
W. Central Africa Standard Time (UTC+01:00) West Central Africa                               W. Central Afri...
Jordan Standard Time            (UTC+02:00) Amman                                             Jordan Standard...
GTB Standard Time               (UTC+02:00) Athens, Bucharest                                 GTB Standard Time 
Middle East Standard Time       (UTC+02:00) Beirut                                            Middle East Sta...
Egypt Standard Time             (UTC+02:00) Cairo                                             Egypt Standard ...
E. Europe Standard Time         (UTC+02:00) Chisinau                                          E. Europe Stand...
Syria Standard Time             (UTC+02:00) Damascus                                          Syria Standard ...
West Bank Standard Time         (UTC+02:00) Gaza, Hebron                                      West Bank Gaza ...
South Africa Standard Time      (UTC+02:00) Harare, Pretoria                                  South Africa St...
FLE Standard Time               (UTC+02:00) Helsinki, Kyiv, Riga, Sofia, Tallinn, Vilnius     FLE Standard Time 
Israel Standard Time            (UTC+02:00) Jerusalem                                         Jerusalem Stand...
Kaliningrad Standard Time       (UTC+02:00) Kaliningrad                                       Russia TZ 1 Sta...
Sudan Standard Time             (UTC+02:00) Khartoum                                          Sudan Standard ...
Libya Standard Time             (UTC+02:00) Tripoli                                           Libya Standard ...
Namibia Standard Time           (UTC+02:00) Windhoek                                          Namibia Standar...
Arabic Standard Time            (UTC+03:00) Baghdad                                           Arabic Standard...
Turkey Standard Time            (UTC+03:00) Istanbul                                          Turkey Standard...
Arab Standard Time              (UTC+03:00) Kuwait, Riyadh                                    Arab Standard Time
Belarus Standard Time           (UTC+03:00) Minsk                                             Belarus Standar...
Russian Standard Time           (UTC+03:00) Moscow, St. Petersburg, Volgograd                 Russia TZ 2 Sta...
E. Africa Standard Time         (UTC+03:00) Nairobi                                           E. Africa Stand...
Iran Standard Time              (UTC+03:30) Tehran                                            Iran Standard Time
Arabian Standard Time           (UTC+04:00) Abu Dhabi, Muscat                                 Arabian Standar...
Astrakhan Standard Time         (UTC+04:00) Astrakhan, Ulyanovsk                              Astrakhan Stand...
Azerbaijan Standard Time        (UTC+04:00) Baku                                              Azerbaijan Stan...
Russia Time Zone 3              (UTC+04:00) Izhevsk, Samara                                   Russia TZ 3 Sta...
Mauritius Standard Time         (UTC+04:00) Port Louis                                        Mauritius Stand...
Saratov Standard Time           (UTC+04:00) Saratov                                           Saratov Standar...
Georgian Standard Time          (UTC+04:00) Tbilisi                                           Georgian Standa...
Caucasus Standard Time          (UTC+04:00) Yerevan                                           Caucasus Standa...
Afghanistan Standard Time       (UTC+04:30) Kabul                                             Afghanistan Sta...
West Asia Standard Time         (UTC+05:00) Ashgabat, Tashkent                                West Asia Stand...
Ekaterinburg Standard Time      (UTC+05:00) Ekaterinburg                                      Russia TZ 4 Sta...
Pakistan Standard Time          (UTC+05:00) Islamabad, Karachi                                Pakistan Standa...
India Standard Time             (UTC+05:30) Chennai, Kolkata, Mumbai, New Delhi               India Standard ...
Sri Lanka Standard Time         (UTC+05:30) Sri Jayawardenepura                               Sri Lanka Stand...
Nepal Standard Time             (UTC+05:45) Kathmandu                                         Nepal Standard ...
Central Asia Standard Time      (UTC+06:00) Astana                                            Central Asia St...
Bangladesh Standard Time        (UTC+06:00) Dhaka                                             Bangladesh Stan...
Omsk Standard Time              (UTC+06:00) Omsk                                              Omsk Standard Time
Myanmar Standard Time           (UTC+06:30) Yangon (Rangoon)                                  Myanmar Standar...
SE Asia Standard Time           (UTC+07:00) Bangkok, Hanoi, Jakarta                           SE Asia Standar...
Altai Standard Time             (UTC+07:00) Barnaul, Gorno-Altaysk                            Altai Standard ...
W. Mongolia Standard Time       (UTC+07:00) Hovd                                              W. Mongolia Sta...
North Asia Standard Time        (UTC+07:00) Krasnoyarsk                                       Russia TZ 6 Sta...
N. Central Asia Standard Time   (UTC+07:00) Novosibirsk                                       Novosibirsk Sta...
Tomsk Standard Time             (UTC+07:00) Tomsk                                             Tomsk Standard ...
China Standard Time             (UTC+08:00) Beijing, Chongqing, Hong Kong, Urumqi             China Standard ...
North Asia East Standard Time   (UTC+08:00) Irkutsk                                           Russia TZ 7 Sta...
Singapore Standard Time         (UTC+08:00) Kuala Lumpur, Singapore                           Malay Peninsula...
W. Australia Standard Time      (UTC+08:00) Perth                                             W. Australia St...
Taipei Standard Time            (UTC+08:00) Taipei                                            Taipei Standard...
Ulaanbaatar Standard Time       (UTC+08:00) Ulaanbaatar                                       Ulaanbaatar Sta...
North Korea Standard Time       (UTC+08:30) Pyongyang                                         North Korea Sta...
Aus Central W. Standard Time    (UTC+08:45) Eucla                                             Aus Central W. ...
Transbaikal Standard Time       (UTC+09:00) Chita                                             Transbaikal Sta...
Tokyo Standard Time             (UTC+09:00) Osaka, Sapporo, Tokyo                             Tokyo Standard ...
Korea Standard Time             (UTC+09:00) Seoul                                             Korea Standard ...
Yakutsk Standard Time           (UTC+09:00) Yakutsk                                           Russia TZ 8 Sta...
Cen. Australia Standard Time    (UTC+09:30) Adelaide                                          Cen. Australia ...
AUS Central Standard Time       (UTC+09:30) Darwin                                            AUS Central Sta...
E. Australia Standard Time      (UTC+10:00) Brisbane                                          E. Australia St...
AUS Eastern Standard Time       (UTC+10:00) Canberra, Melbourne, Sydney                       AUS Eastern Sta...
West Pacific Standard Time      (UTC+10:00) Guam, Port Moresby                                West Pacific St...
Tasmania Standard Time          (UTC+10:00) Hobart                                            Tasmania Standa...
Vladivostok Standard Time       (UTC+10:00) Vladivostok                                       Russia TZ 9 Sta...
Lord Howe Standard Time         (UTC+10:30) Lord Howe Island                                  Lord Howe Stand...
Bougainville Standard Time      (UTC+11:00) Bougainville Island                               Bougainville St...
Russia Time Zone 10             (UTC+11:00) Chokurdakh                                        Russia TZ 10 St...
Magadan Standard Time           (UTC+11:00) Magadan                                           Magadan Standar...
Norfolk Standard Time           (UTC+11:00) Norfolk Island                                    Norfolk Standar...
Sakhalin Standard Time          (UTC+11:00) Sakhalin                                          Sakhalin Standa...
Central Pacific Standard Time   (UTC+11:00) Solomon Is., New Caledonia                        Central Pacific...
Russia Time Zone 11             (UTC+12:00) Anadyr, Petropavlovsk-Kamchatsky                  Russia TZ 11 St...
New Zealand Standard Time       (UTC+12:00) Auckland, Wellington                              New Zealand Sta...
UTC+12                          (UTC+12:00) Coordinated Universal Time+12                     UTC+12            
Fiji Standard Time              (UTC+12:00) Fiji                                              Fiji Standard Time
Kamchatka Standard Time         (UTC+12:00) Petropavlovsk-Kamchatsky - Old                    Kamchatka Stand...
Chatham Islands Standard Time   (UTC+12:45) Chatham Islands                                   Chatham Islands...
UTC+13                          (UTC+13:00) Coordinated Universal Time+13                     UTC+13            
Tonga Standard Time             (UTC+13:00) Nuku'alofa                                        Tonga Standard ...
Samoa Standard Time             (UTC+13:00) Samoa                                             Samoa Standard ...
Line Islands Standard Time      (UTC+14:00) Kiritimati Island                                 Line Islands St...



```


Command:

``` powershell
Get-TimeZone -Name
```


Command:

``` powershell
$timezone
```

Output:

```


Id                         : Pacific Standard Time
DisplayName                : (UTC-08:00) Pacific Time (US & Canada)
StandardName               : Pacific Standard Time
DaylightName               : Pacific Daylight Time
BaseUtcOffset              : -08:00:00
SupportsDaylightSavingTime : True




```


Command:

``` powershell
$timezone | fl *
```

Output:

```


Id                         : Pacific Standard Time
DisplayName                : (UTC-08:00) Pacific Time (US & Canada)
StandardName               : Pacific Standard Time
DaylightName               : Pacific Daylight Time
BaseUtcOffset              : -08:00:00
SupportsDaylightSavingTime : True




```


Command:

``` powershell
$timezone | Get-Member
```

Output:

```


   TypeName: System.TimeZoneInfo

Name                       MemberType Definition                                                                
----                       ---------- ----------                                                                
Equals                     Method     bool Equals(System.TimeZoneInfo other), bool Equals(System.Object obj),...
GetAdjustmentRules         Method     System.TimeZoneInfo+AdjustmentRule[] GetAdjustmentRules()                 
GetAmbiguousTimeOffsets    Method     timespan[] GetAmbiguousTimeOffsets(System.DateTimeOffset dateTimeOffset...
GetHashCode                Method     int GetHashCode()                                                         
GetObjectData              Method     void ISerializable.GetObjectData(System.Runtime.Serialization.Serializa...
GetType                    Method     type GetType()                                                            
GetUtcOffset               Method     timespan GetUtcOffset(System.DateTimeOffset dateTimeOffset), timespan G...
HasSameRules               Method     bool HasSameRules(System.TimeZoneInfo other)                              
IsAmbiguousTime            Method     bool IsAmbiguousTime(System.DateTimeOffset dateTimeOffset), bool IsAmbi...
IsDaylightSavingTime       Method     bool IsDaylightSavingTime(System.DateTimeOffset dateTimeOffset), bool I...
IsInvalidTime              Method     bool IsInvalidTime(datetime dateTime)                                     
OnDeserialization          Method     void IDeserializationCallback.OnDeserialization(System.Object sender)     
ToSerializedString         Method     string ToSerializedString()                                               
ToString                   Method     string ToString()                                                         
BaseUtcOffset              Property   timespan BaseUtcOffset {get;}                                             
DaylightName               Property   string DaylightName {get;}                                                
DisplayName                Property   string DisplayName {get;}                                                 
Id                         Property   string Id {get;}                                                          
StandardName               Property   string StandardName {get;}                                                
SupportsDaylightSavingTime Property   bool SupportsDaylightSavingTime {get;}                                    



```


Command:

``` powershell
Get-RandomCommand
```


Command:

``` powershell
Get-Help Set-ModuleFunctions
```

Output:

```

NAME
    Set-ModuleFunctions
    
SYNOPSIS
    EXPIRIMENTAL: Set FunctionsToExport in a module manifest
    
    
SYNTAX
    Set-ModuleFunctions [[-Name] <String>] [[-FunctionsToExport] <String[]>] [<CommonParameters>]
    
    
DESCRIPTION
    EXPIRIMENTAL: Set FunctionsToExport in a module manifest
    

RELATED LINKS
    https://github.com/RamblingCookieMonster/BuildHelpers
    about_BuildHelpers 

REMARKS
    To see the examples, type: "get-help Set-ModuleFunctions -examples".
    For more information, type: "get-help Set-ModuleFunctions -detailed".
    For technical information, type: "get-help Set-ModuleFunctions -full".
    For online help, type: "get-help Set-ModuleFunctions -online"



```


Command:

``` powershell
cd ..
```


Command:

``` powershell
cd .\ConvertTo-Breakpoint
```


Command:

``` powershell
cd .\module
```


Command:

``` powershell
ls
```

Output:

```


    Directory: C:\workspace\ConvertTo-Breakpoint\module


Mode                LastWriteTime         Length Name                                                           
----                -------------         ------ ----                                                           
d-----        4/15/2018  11:24 PM                private                                                        
d-----        4/15/2018  11:09 PM                public                                                         
-a----        4/16/2018  12:09 AM           4072 ConvertTo-Breakpoint.psd1                                      
-a----        4/15/2018  11:52 PM             98 ConvertTo-Breakpoint.psm1                                      



```


Command:

``` powershell
Get-Content .\ConvertTo-Breakpoint.psd1
```

Output:

```
#
# Module manifest for module 'ConvertTo-Breakpoint'
#
# Generated by: Kevin Marquette
#
# Generated on: 4/15/2018
#

@{

# Script module or binary module file associated with this manifest.
RootModule = '.\ConvertTo-Breakpoint.psm1'

# Version number of this module.
ModuleVersion = '1.0.2'

# Supported PSEditions
# CompatiblePSEditions = @()

# ID used to uniquely identify this module
GUID = '7d7d171a-cb9b-4d36-8d77-eb74fbd55ab9'

# Author of this module
Author = 'Kevin Marquette'

# Company or vendor of this module
CompanyName = 'Self'

# Copyright statement for this module
Copyright = '(c) Kevin Marquette. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Converts an errorrecord into a breakpoint'

# Minimum version of the PowerShell engine required by this module
# PowerShellVersion = ''

# Name of the PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @('ConvertTo-Breakpoint')

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @()

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = @()

        # A URL to the license for this module.
        LicenseUri = 'https://github.com/KevinMarquette/ConvertTo-Breakpoint/blob/master/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/KevinMarquette/ConvertTo-Breakpoint'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        # ReleaseNotes = ''

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}


```


Command:

``` powershell
cd ..
```


Command:

``` powershell
cd ..
```


Command:

``` powershell
cd .\Get-RandomCommand
```


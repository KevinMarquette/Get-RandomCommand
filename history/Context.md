Quick overview of the context command in Pester

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
Get-Command context
```

Output:

```

CommandType     Name                                               Version    Source         
-----------     ----                                               -------    ------         
Function        Context                                            4.3.1      Pester         



```


Command:

``` powershell
Get-Process
```


Command:

``` powershell
Describe "Utnit test this function" {

    Context "Happy path" {
        It "Does not throw" {
            Get-Process
        }
    }
    Context "Error conditions" {
        It "Throws when there is no process" {
            {Get-Process noprocessfound} | Should -Throw
        }
        It "Throws when there is no process" {
            {Get-Process -ID 13} | Should -Throw
        }
    }
}
```


Command:

``` powershell
Describe "Utnit test this function" {

    Context "Happy path" {
        It "Does not throw" {
            Get-Process
        }
    }
    Context "Error conditions" {
        It "Throws when there is no process" {
            {Get-Process noprocessfound -ErrorAction Stop} | Should -Throw
        }
        It "Throws when there is no process" {
            {Get-Process -ID 13 -ErrorAction Stop} | Should -Throw
        }
    }
}
```


Command:

``` powershell
Import-Module pester -Force
```


Command:

``` powershell
Describe "Utnit test this function" {

    Context "Happy path" {
        It "Does not throw" {
            Get-Process
        }
    }
    Context "Error conditions" {
        It "Throws when there is no process" {
            {Get-Process noprocessfound -ErrorAction Stop} | Should -Throw
        }
        It "Throws when there is no process" {
            {Get-Process -ID 13 -ErrorAction Stop} | Should -Throw
        }
    }
}
```


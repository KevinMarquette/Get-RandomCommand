A quick overview and examples of how to use Invoke-Gherkin

Command:

``` powershell
Get-Help Invoke-Gherkin
```

Output:

```

NAME
    Invoke-Gherkin
    
SYNOPSIS
    Invokes Pester to run all tests defined in .feature files
    
    
SYNTAX
    Invoke-Gherkin [[-Path] <String>] [[-ScenarioName] <String[]>] [[-EnableExit]] [[-Tag] <String[]>] [-ExcludeTag <String[]>] [-CodeCoverage <Object[]>] [-Strict] [-OutputFile <String>] [-OutputFormat <String>] [-Quiet] [-PesterOption <Object>] [-Show {None | Default | Passed | Failed | Pending | Skipped | Inconclusive | Describe | Context | Summary | Header | Fails | All}] [-PassThru] [<CommonParameters>]
    
    Invoke-Gherkin -FailedLast [[-Path] <String>] [[-ScenarioName] <String[]>] [[-EnableExit]] [[-Tag] <String[]>] [-ExcludeTag <String[]>] [-CodeCoverage <Object[]>] [-Strict] [-OutputFile <String>] [-OutputFormat <String>] [-Quiet] [-PesterOption <Object>] [-Show {None | Default | Passed | Failed | Pending | Skipped | Inconclusive | Describe | Context | Summary | Header | Fails | All}] [-PassThru] [<CommonParameters>]
    
    
DESCRIPTION
    Upon calling Invoke-Gherkin, all files that have a name matching *.feature in the current folder (and child folders recursively), will be parsed and executed.
    
    If ScenarioName is specified, only scenarios which match the provided name(s) will be run.
    If FailedLast is specified, only scenarios which failed the previous run will be re-executed.
    
    Optionally, Pester can generate a report of how much code is covered by the tests, and information about any commands which were not executed.
    

RELATED LINKS
    Invoke-Pester
    https://kevinmarquette.github.io/2017-03-17-Powershell-Gherkin-specification-validation/
    https://kevinmarquette.github.io/2017-04-30-Powershell-Gherkin-advanced-features/ 

REMARKS
    To see the examples, type: "get-help Invoke-Gherkin -examples".
    For more information, type: "get-help Invoke-Gherkin -detailed".
    For technical information, type: "get-help Invoke-Gherkin -full".
    For online help, type: "get-help Invoke-Gherkin -online"



```


Command:

``` powershell
cd ..
```


Command:

``` powershell
cd .\PSGraph
```


Command:

``` powershell
Invoke-Gherkin
```


Command:

``` powershell
cd .\spec
```


Command:

``` powershell
ls
```

Output:

```


    Directory: C:\workspace\PSGraph\spec


Mode                LastWriteTime         Length Name                                        
----                -------------         ------ ----                                        
-a----        5/28/2017  11:59 PM            158 Edge.feature                                
-a----        5/28/2017  11:59 PM            188 Export-PSGraph.feature                      
-a----       10/21/2017   6:47 PM            197 function.Steps.ps1                          
-a----       10/21/2017   6:47 PM            370 Graph.feature                               
-a----       10/21/2017   6:47 PM           1395 Graph.Steps.ps1                             
-a----        5/28/2017  11:59 PM            164 Inline.feature                              
-a----        5/28/2017  11:59 PM            194 Install-GraphViz.feature                    
-a----       10/21/2017   6:47 PM           2975 module.feature                              
-a----       10/21/2017   6:47 PM           3912 module.Steps.ps1                            
-a----        5/28/2017  11:59 PM            158 Node.feature                                
-a----        5/28/2017  11:59 PM            158 Rank.feature                                
-a----        5/28/2017  11:59 PM            206 Set-NodeFormatScript.feature                
-a----        5/28/2017  11:59 PM            170 SubGraph.feature                            



```


Command:

``` powershell
Get-Content .\Graph.feature
```

Output:

```
Feature: implement Graph function
    As a function author
    In order to support

    Background: we have a module
        Given the module was named PSGraph
        and the module is imported
        and our function was named Graph

    Scenario: Graph unit tests
        Then Graph unit tests will all pass
        And Graph feature tests will all pass

```


Command:

``` powershell
Get-Content .\Graph.Steps.ps1
```

Output:

```
then " Graph unit tests will all pass" {

    it "Graph should not throw an error" {

        {Graph g {}} | Should Not Throw
    }

    it "Graph attributes should not throw an error" {

        {Graph g -Attributes @{label = 'test'} {}} | Should Not Throw
    }

    it "Graph positional attributes should not throw an error" {

        {Graph g @{label = 'test'} {}} | Should Not Throw
    }

    it "Builds basic graph" {

        $name = 'GRAPH_NAME'
        $result = (Graph $name {}) -join ''

        $result | Should Not BeNullOrEmpty
        $result | Should match $name
        $result | Should match '{'
        $result | Should match '}'
        $result | Should match 'digraph'
    }
}

Then  "Graph feature tests will all pass" {

    It "Graph support attributes" {

        {graph g {} -Attributes @{label = "testcase"; style = 'filled'}} | Should Not Throw

        $resutls = (graph g {} -Attributes @{label = "testcase"; style = 'filled'}) -join ''

        $resutls | Should Match 'label=testcase;'
        $resutls | Should Match 'style=filled;'
    }

    It "Items can be placed in a graph" {
        {
            graph test {
                node helo
                edge hello world
                rank same level
                subgraph 0 {

                }
            }
        } | Should Not Throw
    }
}

```


Command:

``` powershell
Get-Content .\Graph.Steps.ps1 | code -
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
d-----        4/14/2018   2:22 AM                Scripts                                     
-a----        4/14/2018   1:02 AM            296 Get-RandomCommand.ps1                       
-a----        4/14/2018   2:24 AM          14795 Remove-TypeData.md                          
-a----        4/14/2018   1:41 AM            769 Save-History.ps1                            



```


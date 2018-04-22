Describe "Unit test this function" {

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
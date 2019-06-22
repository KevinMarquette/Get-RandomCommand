$path = "$ENV:temp\powershellget\Repository"

New-Item -Path $path -ItemType Directory






$repo = @{
    Name               = 'MyRepository'
    SourceLocation     = $Path
    PublishLocation    = $Path
    InstallationPolicy = 'Trusted'
}
Register-PSRepository @repo

Get-PSRepository



Publish-Module -Name posh-git -Repository MyRepository -Verbose

Find-Module -Repository MyRepository



$install = @{
    Name       = 'Posh-Git' 
    Repository = 'MyRepository' 
    Scope      = 'CurrentUser'
}
Install-Module @install

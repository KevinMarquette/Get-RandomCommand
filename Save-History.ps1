function Save-History
{
    [cmdletbinding()]
    param(
        [parameter(
            Mandatory,
            Position = 0
        )]
        [ValidateNotNullOrEmpty()]
        [String]
        $Path,

        [string]
        $Description
    )

    $data = @()
    if($null -ne $Description)
    {
        $data += $Description
    }
    $data += foreach($node in Get-History)
    {
        ''
        "Command:"
        ''
        '``` powershell'
        $node.Commandline
        '```'
        ''
        if($null -ne $node.Output)
        {
            "Output:"
            ''
            '```'
            $node.Output | Out-String
            '```'
            ''
        }
    }
    $data | Add-Content -Path $Path
}
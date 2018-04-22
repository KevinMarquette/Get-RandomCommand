function Get-RandomCommand {
    $commands = Get-Command
    for ($a=0; $a -le 25; $a++) {
      Write-Host -NoNewLine "`r$($commands | get-random)`0`0`0`0`0`0`0`0`0`0`0`0`0`0`0`0`0`0`0`0`0`0`0`0`0`0`0`0`0`0`0`0`0`0`0`0"
      Start-Sleep -Milliseconds ($a*$a)
    }
    Write-Host ''
}
$env:path += ";c:\local\bin\"
$env:path += ";c:\local\bin\SysinternalsSuite"
$env:path += ";c:\Program Files\Notepad++"
$env:path += ";C:\Users\gerskine-Jones\AppData\Roaming\npm"

$env:PSModulePath += ";C:\Users\gerskine-Jones\OneDrive - CFC Underwriting\Documents\PowerShell\Modules"

Import-Module posh-git

function Open-Notes {
&"c:\Program Files\Microsoft VS Code\code.exe" c:\local\repos\notes
}
Set-Alias -name notes -value Open-Notes

function GitGraphLog {
     &"git" log --oneline --decorate --graph
}
Set-Alias -name glt -value GitGraphLog

function GitGraphLogAll {
     &"git" log --oneline --decorate --graph --all
}
Set-Alias -name glta -value GitGraphLogAll

$env:DOTNET_CLI_TELEMETRY_OPTOUT = 1


Set-Alias -name ss -value Select-String
Set-Alias -name vim -value nvim


Set-PSReadLineOption -PredictionSource None
$PSStyle.FileInfo.Directory="`e[0m"

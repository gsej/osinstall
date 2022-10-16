Import-Module posh-git

$env:Path += ";C:\Program Files (x86)\Microsoft SDKs\Windows\v10.0A\bin\NETFX 4.8 Tools\x64"
$env:Path += ";C:\Program Files\Notepad++"



 function Open-Notes { 
 
& "C:\Program Files\Microsoft VS Code\code.exe" c:\local\repos\notes
 
 }

Set-Alias -name notes -value Open-Notes  		

$env:DOTNET_CLI_TELEMETRY_OPTOUT=1
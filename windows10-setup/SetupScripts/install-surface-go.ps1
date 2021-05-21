# Ask for elevated permissions if required
If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]"Administrator")) {
    Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`" $args" -Verb RunAs
    Exit
}

cinst notepadplusplus -y
cinst firacode -y
cinst conemu -y
copy C:\Local\GIT\windows10setup\configFiles\conemu.xml (get-item env:appdata).value
cinst gitextensions -y
cinst nodejs -y
cinst yarn -y
cinst poshgit -y
cinst curl -y
add-content $profile 'Remove-Item alias:curl'
cinst visualstudiocode -y --params '"/NoDesktopIcon /NoContextMenuFiles /NoContextMenuFolders /NoQuicklaunchIcon"'

cinst mpc-hc -y

cinst sumatrapdf.install -y
cinst 7zip -y
cinst openhardwaremonitor -y
cinst cpu-z -y
cinst windirstat -y
cinst putty -y
cinst nmap -y
cinst veracrypt -y
cinst yarn -y
cinst libreoffice-fresh -y`` 

Invoke-Expression .\add-paths.ps1

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
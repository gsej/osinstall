# Ask for elevated permissions if required
If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]"Administrator")) {
	Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`" $args" -Verb RunAs
	Exit
}

cinst notepadplusplus -y
cinst firacode -y
cinst gitextensions -y
cinst kdiff3 -y
cinst sysinternals -y
cinst nodejs -y
cinst yarn -y
cinst poshgit -y
cinst curl -y
cinst visualstudiocode -y --params '"/NoDesktopIcon /NoContextMenuFiles /NoContextMenuFolders /NoQuicklaunchIcon"'

cinst qbittorrent -y
cinst setpoint -y

cinst sumatrapdf.install -y
cinst 7zip -y
cinst openhardwaremonitor -y
cinst cpu-z -y
cinst windirstat -y

# for handling disk images
cinst sdformatter -y
cinst rufus -y
cinst win32diskimager -y
cinst etcher -y
cinst nmap -y

Install-Module posh-docker
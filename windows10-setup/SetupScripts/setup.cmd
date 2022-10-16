@echo off
echo(
echo Hi! If you're GSEJ (the author of this script) you are in luck!
echo This script will setup your Windows 10 machine just the way you like it.
echo(

set HOSTNAME=SurfaceGo
set WORKGROUPNAME=Uberdog
set REPOSITORYFOLDER=C:\local\repos

echo If you're someone else, you probably shouldn't run it!
echo It will probably may do things to your system that make you sad.
echo(
echo You're welcome to fork it and use it as the basis for your own setup though.
echo(
echo Hit enter to continue, or Ctrl-C to stop!
pause

cmd.exe /c powershell.exe -command "& {Set-ExecutionPolicy Unrestricted}"
cmd.exe /c powershell -command "& { Rename-Computer -NewName %HOSTNAME%; Add-Computer -WorkgroupName %WORKGROUPNAME%; }

cmd.exe /c powershell.exe -command "iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex"

mkdir %REPOSITORYFOLDER%

echo I normally reboot at this point to allow the machine name change and any other settings
echo to take effect. Then right click on the appropriate install script on the desktop
echo choose "Run with powershell"
pause
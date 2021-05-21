@echo off
echo(
echo Hi! If you're GSEJ (the author of this script) you are in luck!
echo This script will setup your Windows 10 machine just the way you like it.
echo(

set HOSTNAME=MyPC
set WORKGROUPNAME=Workgroup
set REPOSITORYFOLDER=C:\Local\GIT

echo If you're someone else, you probably shouldn't run it!
echo It will probably may do things to your system that make you sad.
echo(
echo You're welcome to fork it and use it as the basis for your own setup though.
echo(
echo Hit enter to continue, or Ctrl-C to stop!
pause

cmd.exe /c powershell.exe -command "& {Set-ExecutionPolicy Unrestricted}"
cmd.exe /c powershell -command "& { Rename-Computer -NewName %HOSTNAME%; Add-Computer -WorkgroupName %WORKGROUPNAME%; }"
cmd.exe /c powershell.exe -command "if (!(Test-Path $profile)) { New-Item -type file -force $profile }"


cmd.exe /c powershell.exe -command "add-content $profile '$p = [Environment]::GetEnvironmentVariable(\"PSModulePath\")'"
cmd.exe /c powershell.exe -command "add-content $profile '$p += \";%REPOSITORYFOLDER%\windows10setup\modules\"'"
cmd.exe /c powershell.exe -command "add-content $profile '[Environment]::SetEnvironmentVariable(\"PSModulePath\",$p)'"

cmd.exe /c powershell.exe -command "add-content $profile '$p = [Environment]::GetEnvironmentVariable(\"PSModulePath\");$p += \";C:\Local\GIT\windows10setup\modules\";[Environment]::SetEnvironmentVariable(\"PSModulePath\",$p)'"

cmd.exe /c powershell.exe -command "iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex"
cmd.exe /c powershell.exe -command "C:\ProgramData\chocolatey\choco install git.install -y"
mkdir %REPOSITORYFOLDER%
"c:\Program Files\Git\bin\git.exe" clone https://bitbucket.org/gsej/windows10setup.git %REPOSITORYFOLDER%\windows10setup

cmd.exe /c powershell.exe -command "get-content %REPOSITORYFOLDER%\windows10setup\setupscripts\prompt.ps1 | Add-Content $profile"

cmd.exe /c powershell.exe -command "Copy-Item -Path %REPOSITORYFOLDER%\windows10setup\setupscripts\install*.ps1 -Destination $env:userprofile\desktop"

echo I normally reboot at this point to allow the machine name change and any other settings
echo to take effect. Then right click on the appropriate install script on the desktop
echo choose "Run with powershell"
pause
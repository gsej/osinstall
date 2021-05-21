# README #

### This is a bunch of scripts I use when I setup a new PC. ###

They are for various different operating systems, and various specific devices.

* You probably don't want to use these if you are not me.
* Really. It will do bad things to your computer, like overwrite your powershell profile, and change *many* settings.
* If you do, you should fork it and check everything first, probably changing quite a bit!

### How do I get set up? ###

#### For Windows 10
* Get a machine with a clean install of Windows 10.
* Grab the setupscripts\setup.cmd file, and run it form an elevated command prompt.
* It will remove script execution restrictions on powershell, set up chocolately, install git, and download the repo.
* Then it will change lots of windows settings, based on how *I* like things.
* It will install lots of software, based on what *I* like.
* It may do other things.

#### For Linux
Follow the individual instructions for Linux distro / machine. Even more than the Windows 10 stuff, this is really only for me. 

### Credits ###

* The win10.ps1 script was forked from [here](https://github.com/Disassembler0/Win10-Initial-Setup-Script). Many thanks to the original author.

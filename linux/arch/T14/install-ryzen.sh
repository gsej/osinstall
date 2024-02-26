yay -S zenmonitor

yay -S ryzenadj

pacman -s msr-tools # msr module

# module cpuid missing


pacman -S acpid
systemctrl start acpid
https://wiki.archlinux.org/index.php/Acpid

https://wiki.archlinux.org/index.php/CPU_frequency_scaling

default cpufreq governor is loaded at start. this can be changed with

yay -S cpupower-gui

pacman -S cpupower 

pacman -S turbostat # reporting

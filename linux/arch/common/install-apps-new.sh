pacman -S go
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -S hyprland kitty
yay -S sddm.service networkmanager

systemctl enable sddm.service 
systemctl enable NetworkManager 

yay -S network-manager-applet
sudo systemctl enable NetworkManager.service

yay -S waybar alacritty wofi
yay -S dolphin

yay -S pipewire pipewire-docs wireplumber pipewire-audio pipewire-pulse pavucontrol helvum

yay -S chromium firefox mlocate

pacman -S veracrypt  packagekit-qt5
pacman -S nodejs  npm yarn python gimp deluge deluge-gtk dotnet-sdk wget rsync
pacman -S libreoffice
yay -S postman
yay -S azure-cli
#
# install gvim over vim because it includes vim with clipboard support
yay -S gvim

# for chromecast from vlc
pacman -S vlc libmicrodns protobuf #pavucontrol

# dev tools
yay -S visual-studio-code-bin

# for fat filesystems:
pacman -S dosfstools exfat-utils

# for remote desktop
pacman -S rdesktop freerdp krdc

# docker
pacman -S docker
systemctl start docker.service
systemctl enable docker.service
usermod -aG docker gsej

yay -S shellcheck tree broot man-pages tmux htop

#for power:
#see https://austingwalters.com/increasing-battery-life-on-an-arch-linux-laptop-thinkpad-t14s/
pacman -S powertop
yay -S tlp

yay -S insync
yay -S nordvpn-bin
yay -S qview # image viewer
#
# other
pacman -S strace ltrace inetutils

# time
systemctl enable systemd-modules-load.service

# for dropbox
pacman -S python-gpgme
yay -S dropbox
 
 # mDNS
yay -S nss-mdns
systemctl enable --now avahi-daemon.service

# edit /etc/nsswitch.conf and change the hosts line to include this:
# hosts: mymachines mdns_minimal [NOTFOUND=return] resolve [!UNAVAIL=return] files myhostname dns
yay -S nuget
yay -S mr
yay -S neofetch
yay -S at
yay -S ifplugd

systemctl enable --now ifplugd@eth0.service

yay -S udisks2
yay -S kmonad




 
yay -S nuget
yay -S mr
yay -S neofetch
yay -S at

systemctl enable --now ifplugd@eth0.service

yay -S udisks2
yay -S kmonad

yay -S glow # display markdown in console

# virtual box
yay -S virtualbox virtualbox-host-modules-arch virtualbox-guest-iso

yay -S storageexplorer

# pacman stuff
yay -S informant # prevents upgrade unless archnews has been read
yay -S rebuild-detector

yay -S btop

yay -S bcc bcc-tools python-bcc

############################################## hyprland stuffs

yay -S xd-desktop-portal-hyprland


yay -S lxappearance

# notifications
yay -S mako
yay -S swaylock swayidle

# wallpapers
yay -S wbg
yay -S arch-wallpaper

# power control
yay -S nwg-bar

# sound
yay -S  pipewire wireplumber
yay -S pamixer

# authentication
yay -S polkit-kde-agent

# qt wayland support
yay -S qt5-wayland qt6-wayland

yay -S otf-font-awesome

yay -S brightnessctl
yay -S materia-gtk-theme papirus-icon-theme lxappearance
yay -S ttf-ubuntu-font-family
yay -S ttf-font-awesome
yay -S gnome-keyring seahorse libsecret

pacman -S okular ark openssh kate solaar gwenview
#
# in chrome:
# navigate to chrome://flags and search for ozone. Set value to auto so it uses wayland


##########################


# from sway notes


yay -S blueberry-wayland

 # to make firefox use userChrome.css:
 
 # 
# If the toolkit.legacyUserProfileCustomizations.stylesheets preference is not already set to true, double-click it to switch the value from false to true.


// set font in .do


// remove psk-flags line in /etc/NetworkManager/systemconnections/goodmonson 
and add password as psk=password

yay -S blueberry


pacman -S xorg plasma plasma-desktop terminator xterm vlc okular ark dolphin openssh kate solaar gwenview
#
# not yet
pacman -S iw wireless_tools 
systemctl enable bluetooth
pacman -S bluez-hid2hci pulseaudio-bluetooth # needed for headphones     

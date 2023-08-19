pacman -S go
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

pacman -S xorg plasma plasma-desktop terminator xterm vlc okular ark dolphin openssh kate solaar gwenview

  
systemctl enable sddm.service
systemctl enable NetworkManager 

pacman -S chromium firefox iw mlocate wireless_tools visual-studio-code-bin

# to allow firefox to use system file dialog
pacman -S xdg-desktop-portal-kde


systemctl enable bluetooth
pacman -S bluez-hid2hci pulseaudio-bluetooth # needed for headphones     

pacman -S veracrypt  packagekit-qt5
pacman -S nodejs  npm yarn python2 gimp deluge deluge-gtk dotnet-sdk wget rsync
pacman -S libreoffice

yay -S postman
yay -S azure-cli
yay -S --noconfirm --needed snapd
ln -s /var/lib/snapd/snap /snap # to allow classic snaps
systemctl enable --now snapd.socket

sudo snap install slack --classic

# to log into slack if it doesn't open the login page:
# https://app.slack.com/ssb/signin gets you to the sign-in screen. The sign in button only sends you to this url, it's all it does. 
#$  xdg-open https://google.com


# for chromecast from vlc
pacman -S libmicrodns protobuf pavucontrol

# for fat filesystems:
pacman -S dosfstools exfat-utils

pacman -S shellcheck tree broot pandoc man-pages tmux htop

# for remote desktop
pacman -S rdesktop freerdp
pacman -S krdc

#for power:
pacman -S powertop

#see https://austingwalters.com/increasing-battery-life-on-an-arch-linux-laptop-thinkpad-t14s/

# docker
pacman -S docker
systemctl start docker.service
systemctl enable docker.service
usermod -aG docker gsej

# insync
yay -S insync
yay -S nordvpn-bin


# virtualbox

yay -S qview # image viewer


# languages

yay -S anaconda
yay -S ghc # Haskell


# other

pacman -S strace
pacman -S ltrace
pacman -S inetutils
yay -S bauh

# time

systemctl enable systemd-modules-load.service


# for dropbox

 pacman -S python-gpgme
 yay -S dropbox
 
 # dotnet 
 
yay -S nuget
 

 # mDNS
 
yay -S nss-mdns
systemctl enable --now avahi-daemon.service

# edit /etc/nsswitch.conf and change the hosts line to include this:
# hosts: mymachines mdns_minimal [NOTFOUND=return] resolve [!UNAVAIL=return] files myhostname dns
#

yay -S mr
yay -S neofetch

yay -S dupeguru
yay -S fdupes
yay -S at

yay -S ifplugd

systemctl enable --now ifplugd@eth0.service

yay -S udisks2

yay -S kmonad
# power management

yay -S tlp


yay -S racket

# then install sicp package in racket

echo "gsej    ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/gsej

apt update
apt -y upgrade
read -p "Press any key to continue... " -n1 -s
apt -y install exfat-fuse exfat-utils
apt -y install dos2unix
apt -y install apt-transport-https ca-certificates software-properties-common

apt -y install net-tools
apt -y install intel-microcode

# ubuntu stuff
apt -y install dconf-editor

read -p "Press any key to continue... " -n1 -s

apt -y install terminator
apt -y install curl

read -p "Press any key to continue... " -n1 -s

# Veracrypt 

add-apt-repository -y ppa:unit193/encryption
apt update
apt -y install veracrypt

read -p "Press any key to continue... " -n1 -s

# for Insync
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ACCAF35C
echo "deb http://apt.insynchq.com/ubuntu bionic non-free contrib" > /etc/apt/sources.list.d/insync.list
apt update

apt -y install insync

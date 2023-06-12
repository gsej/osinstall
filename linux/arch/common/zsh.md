# zsh
pacman -S zsh
# also oh-my-zsh
# then set theme to be refined.

 zsh /usr/share/zsh/functions/Newuser/zsh-newuser-install -f

 sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

 git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions



# to allow firefox to use system file dialog, install xdg-desktop-portal-kde
# and add:

export GTK_USE_PORTAL=1

to the ~/.zprofile file

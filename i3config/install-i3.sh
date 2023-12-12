mkdir -p ~/.config/systemd/user
cp plasma-custom-wm.service ~/.config/systemd/user/
systemctl --user mask plasma-kwin_x11.service
systemctl --user enable plasma-custom-wm.service

systemctl --user disable plasma-custom-wm.service
systemctl --user unmask plasma-kwin_x11.service
rm ~/.config/systemd/user/plasma-custom-wm.service

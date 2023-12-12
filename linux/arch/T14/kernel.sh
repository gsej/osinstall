pacman -S asp pacman-contrib


gpg --keyserver keys.gnupg.net --recv-keys 79BE3E4300411886
gpg --keyserver keys.gnupg.net --recv-keys 38DBBDC86092693E
gpg --keyserver keys.gnupg.net --recv-keys 3B94A80E50A477C7


The key is indeed 19802F8B0D70FC30, but for some reason the Ubuntu keyserver is not providing the 3B94A80E50A477C7 subkey. Use <hkps://keys.openpgp.org> instead.


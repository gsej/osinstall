targetFolder=/home/gsej/repos/osinstall/add-scripts-to-iso/newiso

xorriso -as mkisofs -o new.iso -b /boot/syslinux/isolinux.bin -c /boot/syslinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -R -J -v -T newiso/


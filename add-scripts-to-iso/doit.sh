mkdir -p existingiso
sudo mount -o loop ~/Downloads/complete/archlinux-2025.01.01-x86_64.iso existingiso

mkdir -p newiso
cp -r existingiso/* newiso 

cp -r scripts newiso

xorriso -as mkisofs -o new.iso -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -R -J -v -T newiso/


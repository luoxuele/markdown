
lsblk 查看块设备
gdisk
cgdisk


mkfs.fat
mkswap
swapon
mkfs.ext4

mount /dev/sda3 /mnt
mount /dev/sda1 /mnt/boot

pacman -Sy
reflector --verbose --latest 15 --sort rate --save mirrorlist


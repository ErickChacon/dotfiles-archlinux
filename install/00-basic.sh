# gpg setup (https://wooledge.org/~greg/crypto/node41.html)
gpg --gen-key

# Verify signature
gpg --keyserver-options auto-key-retrieve --verify archlinux-2022.10.01-x86_64.iso.sig

# identify your usb label (eg. sda)
lsblk

# create bootable usb
# sudo dd if=archlinux-2020.11.01-x86_64.iso of=/dev/sdX status=progress
sudo dd if=archlinux-2022.10.01-x86_64.iso of=/dev/sda status=progress


# keyboard layout
ls /usr/share/kbd/keymaps/**/*.map.gz | grep la
# latin spanish
loadkeys la-latin1

# verify boot mode
ls /sys/firmware/efi/efivars

# working internet (use ethernet)
ping google.com

# update the system clock
timedatectl set-ntp true
timedatectl status

# partition disk
fdisk -l
fdisk /dev/sdX

# create a new label (g)
# add a new partition for UEFI
n
1
+550M
# add a new partition for SWAP
n
2
+4G
# add a new partition for home
n
3
# change partition type 1
t
1
1
# change partition type 2
t
2
19
# write changes
w
# make filesystem
mkfs.fat -F32 /dev/sdX1
mkswap /dev/sdX2
swapon /dev/sdX2
mkfs.ext4 /dev/sdX3

# mounting and install arch
mount /dev/sdX3 /mnt
pacstrap /mnt base linux linux-firmware vim sudo

# missing firmware for module
# aic94xx
# wd797x
# xhci_pci

# generate filesystem table
genfstab -U /mnt >> /mnt/etc/fstab

# change root to our installation
arch-chroot /mnt

# set timezone Lima
ln -sf /usr/share/zoneinfo/America/Lima /etc/localtime

# set hardware clock
hwclock --systohc

# locale and uncomment
vi /etc/locale.gen
locale-gen

# hsotname
vi /etc/hostname
# acer
vi /etc/hosts
# 127.0.0.1	localhost
# ::1		localhost
# 127.0.1.1	myhostname.localdomain	myhostname

passwd

# create users
useradd -m marita
passwd marita

usermod -aG wheel,audio,video,optical,storage marita
pacman -S sudo
visudo
# uncomment wheel group

# install grub
pacman -S grub
pacman -S efibootmgr dosfstools os-prober mtools
mkdir /boot/EFI
mount /dev/sdX1 /boot/EFI
# grub-install --target=x86_64-efi --bootloader-id=grub_uefi --recheck
grub-mkconfig -o /boot/grub/grub.cfg

# install something
pacman -S networkmanager
systemctl enable NetworkManager

# reboot
exit
umount -l /mnt
reboot

# missing firmware

# can't unmount /dev/loop0: invalid argument
# can't unmount /oldrun/archiso/cowspace: invalid argument
# can't unmount /oldrun/archiso/bootmnt: DEvice or resource busy
# kvm: exiting hardware virtualization
# 5.2.14

# Partitioning

# 1. nueva tabla de particion
# 2. efi 550 MB
# 3. swap (same as ram for hibernation)
# 4. / 60GB (61440 MB) - ext4
# 5. home - ext


# sudo grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB /dev/nvme0n1p1
sudo grub-mkconfig -o /boot/grub/grub.cfg








grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB

Installing for x86_64-efi platform.
grub-install: warning: disk does not exist, so falling back to partition device /dev/nvme0n1p1.
grub-install: warning: disk does not exist, so falling back to partition device /dev/nvme0n1p1.
grub-install: warning: disk does not exist, so falling back to partition device /dev/nvme0n1p1.
grub-install: error: disk `hostdisk//dev/nvme0n1p1' not found.

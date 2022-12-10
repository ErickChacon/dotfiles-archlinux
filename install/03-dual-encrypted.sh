# Basic Arch installation with encryption (LVM on LUKS)

# 0. Setup UTC time in Windows (https://wiki.archlinux.org/title/System_time)
# - Open regedit and add a DWORD value with hexadecimal value 1 to the registry:
# - Sincronize time on settings.

# 1. Set-up installer

# gpg setup (https://wooledge.org/~greg/crypto/node41.html)
gpg --gen-key

# Verify signature
gpg --keyserver-options auto-key-retrieve --verify archlinux-2022.10.01-x86_64.iso.sig

# identify your usb label (eg. /dev/sda)
lsblk
# or with `fdisk -l`

# create bootable usb
# sudo dd if=archlinux-2020.11.01-x86_64.iso of=/dev/sdX status=progress
sudo dd if=installers/archlinux/archlinux-2022.12.01-x86_64.iso of=/dev/sda status=progress

# 2. Boot the usb installer and prepare

# identify your disk label (eg. /dev/sdX)
lsblk
# or with `fdisk -l`

# set-up the keyboard layout uk
ls /usr/share/kbd/keymaps/**/*.map.gz | grep uk
loadkeys uk

# # keyboard layout la-latin1
# ls /usr/share/kbd/keymaps/**/*.map.gz | grep la
# loadkeys la-latin1

# verify uefi boot mode (uefi if files exist)
ls /sys/firmware/efi/efivars

# working internet (use ethernet)
ping google.com

# update the system clock
timedatectl set-ntp true
timedatectl status
timedatectl

# # if timezone is not recognized  you can manually set it up
# timedatectl list-timezones | grep Lima
# timedatectl set-timezone America/Lima

# 3. Prepare and encrypt disk
# One partition (/dev/sdX1) will be for UEFI boot and another (/dev/nvmXn1p1) for the
# encrypted LVM.

# 3.1. Partition disk
fdisk -l
fdisk /dev/sdX

# # create a new label (g)
# # add a new partition for UEFI
# n
# 1
# +550M
# # change partition 1 type to EFI
# t
# 1
# EF

# add a new partition for LVM (remaning size)
n

# change partition 2 type to LVM
t
lvm

# write changes
w

# 3.2. Set-up encrypted LVM partition

# encrypt lvm partition (/dev/nvmXn1p1)
cryptsetup luksFormat /dev/nvmXn1p1
YES

# open encrypted partition to format it
cryptsetup open /dev/nvmXn1p1 cryptlvm

# create physical volume for the encrypted partition
pvcreate /dev/mapper/cryptlvm

# create volume group
vgcreate MyVolGroup /dev/mapper/cryptlvm

# Create all your logical volumes on the volume group
lvcreate -L 15GB MyVolGroup -n swap
lvcreate -L 30GB MyVolGroup -n root
lvcreate -l 100%FREE MyVolGroup -n home

# 4. Install arch

# format filesystems
# mkfs.fat -F32 /dev/sdX1
mkfs.ext4 /dev/MyVolGroup/root
mkfs.ext4 /dev/MyVolGroup/home
mkswap /dev/MyVolGroup/swap

# mount filesystems
mount /dev/MyVolGroup/root /mnt
mount --mkdir /dev/MyVolGroup/home /mnt/home
mount --mkdir /dev/nvmeXn1pX /mnt/boot
swapon /dev/MyVolGroup/swap

# install arch
pacstrap -K /mnt base base-devel linux linux-firmware lvm2 amd-ucode neovim tmux

# # set-up pacman-key if any claimed by pacstrap
# # https://wiki.archlinux.org/title/Pacman/Package_signing#Upgrade_system_regularly
# pacman-key --init
# pacman-key --populate archlinux

# generate filesystem table
genfstab -U /mnt >> /mnt/etc/fstab

# 5. Set-up basic configuration on the installed system

# change root to our installated system
arch-chroot /mnt

# set timezone (e.g. America/Lima)
ln -sf /usr/share/zoneinfo/America/Lima /etc/localtime

# set hardware clock
hwclock --systohc

# locale and uncomment
nvim /etc/locale.gen
# Uncomment those you need
# en_GB.UTF-8 UTF-8
# en_GB ISO-8859-1
locale-gen

# set language and console
nvim /etc/locale.conf
# LANG=en_GB.UTF-8

nvim /etc/vconsole.conf
# KEYMAP=uk

# write desired hostname (e.g. dell-g5, home) at
nvim /etc/hostname

# set hosts
nvim /etc/hosts
# 127.0.0.1	localhost
# ::1		localhost
# 127.0.1.1     myhostname

# set root password
passwd

# 6. Set-up mkinitcpio, grub and network manager

# set up mkinitcpio for encrypted filesystem (keyboard, keymap, encrypt and lvm2)
nvim /etc/mkinitcpio.conf
# HOOKS=(base udev autodetect keyboard keymap consolefont modconf block encrypt lvm2 filesystems fsck)
# HOOKS=(base udev autodetect modconf kms keyboard keymap consolefont block encrypt lvm2 filesystems fsck)
mkinitcpio -p linux

# install grub and other packages
pacman -S grub efibootmgr dosfstools os-prober mtools
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
# find uuid of the lvm partition
blkid | grep /dev/nvmXn1p1 >> deleteme
# /dev/nvmXn1p1: UUID=....
# set up grub for encrypted lvm partition
nvim /etc/default/grub
# GRUB_CMDLINE_LINUX="cryptdevice=UUID=myuuid:cryptlvm root=/dev/MyVolGroup/root"
grub-mkconfig -o /boot/grub/grub.cfg

# update all system
pacman -Syu

# install networkmanager
pacman -S networkmanager
systemctl enable NetworkManager

# 7. Create users
# With all the previous steps we already have an arch system with internet connection.

# create users
useradd -m -g wheel user1
passwd user1

useradd -m -g user2
passwd user2

EDITOR=/usr/bin/nvim visudo
# uncomment wheel group

# 7. Dual boot on grub
# In case os-prober does not work, we can restart and do the following
nvim /etc/default/grub
# uncomment GRUB_DISABLE_OS_PROBER=false
os-prober
grub-mkconfig -o /boot/grub/grub.cfg

# You can also setup the default boot
nvim /etc/default/grub
# for example modify: GRUB_DEFAULT=2
grub-mkconfig -o /boot/grub/grub.cfg


# Install woeusb-ng to create windows installer

yay -S woeusb-ng

# Use gui interface to create windows installer. You just need to select the iso file and
# the usb.

woeusbgui

# Insert usb bootable installer.
# Clean ssd to have all as unallocated space
# Create custom EFI partition before installation.
# https://superuser.com/questions/1308324/create-efi-partition-before-installing-windows-10
# Press Shift+F10 and type the following commands:

diskpart
select disk 0
create partition efi size=500
exit

# Select remaining space, select new so windows will create the required paritions and
# proceed with installation.


# Setup UTC time in Windows (https://wiki.archlinux.org/title/System_time)
# - Open regedit and add a DWORD value with hexadecimal value 1 to the registry:
# - Sincronize time on settings.

# After windows install, use the BIOS to set-up the boot order

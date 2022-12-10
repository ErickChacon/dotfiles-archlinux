sudo pacman -S pacman-contrib

# check the size of cached packages
# du -sh /var/cache/pacman/pkg .cache/yay

# check the packages to be removed if keeping 3 versions
# paccache -dvk3

# remove packages keeping 3 versions
# paccache -rvk3

# check the packages to be removed if keeping 3 uninstalled versions
# paccache -duvk3

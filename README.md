# dotfiles-archlinux

Dotfiles for arch with xorg with suckless dwm, st

## allow tapping on mouse pad

```
# get the device id
xinput list
## DELL081C:00 044E:121F Touchpad            id=11

xinput list-props deviceid
# identify id for "libinput Tapping Enabled (346)"
xinput set-prop 11 346 1
```

## zsh

Remember to create ~/.cache/zsh/

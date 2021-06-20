# Spectrwm

Is a small dynamic tiling and reparenting window manager for X11.

![spectrwm - darknesscode](https://github.com/codedarkness/spectrwm/blob/master/config-files/spectrwm-a.png)

## What this does

This script just install a custom build for:

* *spectrwm*
* spectrwm.conf (custom file)
* color schemes for spectrwm

![spectrwm - darknesscode](https://github.com/codedarkness/spectrwm/blob/master/config-files/spectrwm-b.png)

## Software

Here are the software that need to be installed (some are optional)

* Compton (optional)
* Ranger file manager
* Nitrogen
* xfce4-power-manager
* xautolock (blurlock)
* st (terminal)
* urxvt (termianl)
* NetworkManger
* dnust

## Helpfull keybindings for this installation

| Keybinding      | Action                |
| :---------      | :------------------   |
| MOD+Enter       | Open terminal (st)    |
| MOD+Shift+Enter | Open Terminal (urxvt) |
| MOD+r           | Ranger File Manager   |
| MOD+v           | Vim                   |
| MOD+Shift+o     | dmenu                 |
| MOD+0           | System account        |
| MOD+F12         | Lock screen           |
| MOD+Shift+r     | Re-start spectrwm     |

Add your keybindings in /.config/spectrwm/spectrwm.conf. And change your terminal before installing

This works with *Arch Linux* (finally installed) *Debian* (need a bit of work) *Void Linux* (cool).

## Notes

The battery module is enabled in the status bar, if you run this build in your laptop you need to check the battery (BAT0 in this case). Run ls /sys/class/power_supply to know the name of the battery.

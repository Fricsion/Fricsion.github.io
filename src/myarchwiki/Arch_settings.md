---
title: Arch Settings
header-includes:
- \usepackage[whole]{bxcjkjatype}
	<meta charset="utf-8"/>
	<title>Arch Settings</title>
---

## installing fonts (using otf, ttf)
just move those files to ~/.local/share/fonts/

## listing fonts
`fc-list`

## show font priority (the higher the more top in the priority)
`fc-match`

## changing built-in laptop keyboard layout (at kernel level)
https://wiki.archlinux.org/title/Map_scancodes_to_keycodes

create & edit file `/etc/udev/hwdb.d/whatever.hwdb`
to be like below
```
evdev:atkbd:dmi:*
 KEYBOARD_KEY_2b=enter
  KEYBOARD_KEY_1c=backslash
   KEYBOARD_KEY_7d=backspace
    KEYBOARD_KEY_70=leftalt
	 KEYBOARD_KEY_73=rightshift
```
	 as you can see these lines will tell the kernel "when the key recognized as scancode(e.g. 0x2b, 0x1c...), it will send keycode of right side of ="
	 Be aware that if you leave out a space (no more than 1 space) in the line where it contains KEYBOARD_KEY_...
	 Also, scancodes can be aquired by runing this command below in console not in GUI
	 `showkey --scancodes`
	 You have to use it without 0x (e.g. 0x2b -> 2, 0x1c -> 1c)
	 it might output two or more codes for one key. You might just get the first one (maybe it's the pressed down) and ignore the second one (maybe it's the pressed up ig)
	 and about modifier keys, they will likely output 4 codes. So use the most unique one compared to other ones. 

	 and run
`sudo systemd-hwdb update`
`sudo udevadm trigger`  

## Natural Scrolling
https://wiki.archlinux.org/title/Libinput
this wiki page literally says everything.
1. `xinput list`
	to get devices and their ids
2. `xinput list-props <id>`
	without <> and check which number in parenthesis is assigned to the Natural Scrolling Enabled
3. `xinput set-props <id> <number> 1`
	this time, we want the natural scrolling to be enabled which is 1.

## Keychron keyboard function keys not working 

 Keychron is used like Apple keyboard in ubuntu:
  Reference: https://help.ubuntu.com/community/AppleKeyboard

* 0 = disabled : Disable the 'fn' key. Pressing 'fn'+'F8' will behave like you only press 'F8'
* 1 = fkeyslast : Function keys are used as last key. Pressing 'F8' key will act as a special key. Pressing 'fn'+'F8' will behave like a F8.
* 2 = fkeysfirst : Function keys are used as first key. Pressing 'F8' key will behave like a F8. Pressing 'fn'+'F8' will act as special key (play/pause).

example: 

`echo 2 | sudo tee /sys/module/hid_apple/parameters/fnmode`

---
title: Arch Installation
header-includes:
- \usepackage[whole]{bxcjkjatype}
	<meta charset="utf-8"/>
    <title>Arch Installation</title>
---
# Arch installation

# During installation

## When EFI directory not found when grub-install, 
Inside chroot environment 
Make sure if you have installed efibootmgr 

`
grub-install --efi-directory=/boot/efi --target=x86_64-efi /dev/sdX
`

## When you cannot see the entire screen
Install fbset
Use
fbset -xres 2000 -yres 1200
Or something like that


# Post Installation
## Fix WiFi adapter not recognized issue
Use
`lspci -k`
to show drivers in use. 

Find the Wi-Fi adapter (most likely the Broadcom one)

If the kernel driver in use is either bcma-pci-bridge or b43-pci-bridge, I need 
this process

### procedure

- `sudo pacman-mirrors -f 5 && sudo pacman -Syyu` to update system
- `sudo pacman -S $(pacman -Qsq "^linux" | grep "^linux[0-9]*[-rt]*$" | awk '{pr
int $1"-headers"}' ORS=' ')` to install Linux headers packages
- `sudo pacman -S dkms`
- `sudo pacman -S broadcom-wl-dkms`
- reboot!

ref: https://archived.forum.manjaro.org/t/broadcom-wifi-driver-fails-to-install-
properly/46316/2

## Connect to WiFi
## Fix WiFi adapter not recognized issue
Use
`lspci -k`
to show drivers in use. 

Find the Wi-Fi adapter (most likely the Broadcom one)

If the kernel driver in use is either bcma-pci-bridge or b43-pci-bridge, I need this process

### procedure

- `sudo pacman-mirrors -f 5 && sudo pacman -Syyu` to update system
- `sudo pacman -S $(pacman -Qsq "^linux" | grep "^linux[0-9]*[-rt]*$" | awk '{print $1"-headers"}' ORS=' ')` to install Linux headers packages
- `sudo pacman -S dkms`
- `sudo pacman -S broadcom-wl-dkms`
- reboot!

ref: https://archived.forum.manjaro.org/t/broadcom-wifi-driver-fails-to-install-properly/46316/2

# Connect to WiFi (with iwd)
- `sudo pacman -S iwd`
- `sudo systemctl start iwd.service`
- `sudo systemctl enable iwd.service`

Enter `iwctl` to get in to the interface
Use `device list` to see WiFi adapters available
`station {device} scan` to scan networks
`station {device} get-networks` to see available ones
`station {device} connect {network}` to connect!

# Connect to WiFi (with NetworkManager)
- `sudo pacman -S networkmanager`
-  `sudo systemctl start NetworkManager`
-  `sudo systemctl enable NetworkManager`
-  `nmcli dev wifi list` to show every Wi-Fi available
-  `nmcli dev wifi con "{SSID}" password "{password}"`
-  try enabling/starting wpa_supplicant as well if it didn't work!


# Boot option doesn't show up (on Mac)
Always check this ref: https://wiki.archlinux.org/title/Mac
First, inside chrooted environment, run
`bootctl --path=/boot install`

We'll modify files in /boot/loader/
change loader.conf content to
`
default arch.conf
timeout 4
console-mode max
editor no
`
add two files (arch.conf, arch-fallback.conf) under /boot/loader/entries/
- arch.conf
`
title Arch Linux
linux /vmlinuz-linux
initrd /initramfs-linux.img
options root="UUID={UUID}" rw
`
- arch-fallback.conf (*optional)
`
title Arch Linux (fallback initramfs)
linux /vmlinuz-linux
initrd /initramfs-linuz-fallback.img
options root="UUID={UUID}" rw


# For AMD video cards
pacman -S xf86-video-amdgpu
# For ATI video cards
pacman -S xf86-video-ati
# For Intel video cards
pacman -S xf86-video-intel
# For nVidia video cards
pacman -S nvidia

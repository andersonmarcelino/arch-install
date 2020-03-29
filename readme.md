package list
```
pacman -S vim networkmanager network-manager-applet wireless_tools \
	  wpa_supplicant dialog dhcpcd dosfstools mtools sudo \
          xorg-server xorg-app alacritty man xdotool
```

drivers
```
pacman -S xf86-video-intel libgl mesa \
          nvidia nvidia-libgl alsa alsa-utils pulseaudio \
          xf86-input-synaptics broadcom-wl-dkms pamixer \
          nitrogen feh thunar
```

enable services
```
systemctl enable NetworkManager
```

useradd
```
useradd -m -g users -G wheel <USERNAME>
passwd <USERNAME>
echo "<USERNAME> ALL=(ALL) ALL" >> /etc/sudoers
```

grub
```
pacman -S grub-efi-x86_64 efibootmgr
grub-install –target=x86_64-efi –efi-directory=/boot/efi –bootloader-id=arch_grub –recheck
cp /usr/share/locale/en@quot/LC_MESSAGES/grub.mo /boot/grub/locale/en.mo
grub-mkconfig -o /boot/grub/grub.cfg
```

lightdm
```
pacman -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings
systemctl enable lightdm
```

i3-group
```
i3-gaps
i3status
i3blocks
i3lock
```

set keymap 
```
sudo localectl set-x11-keymap br abnt2
```

install aur
```
  pacman -S git go ssh
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si
```

aur packges
```
yay -S brave-bin
```

#config i3

default
```
vim ~/.config/i3/config
mod+s > mod+q
mod+h > mod+s
fix navigate vim on focus, resize and move

bindsym $mod+F2 exec brave
```

nitrogen
```
exec nitrogen --head=0 --set-scaled ~/wallpaper/wall.jpg
exec nitrogen --head=1 --set-scaled ~/wallpaper/wall.jpg
```

shutdown menu
```
mode "Exit (l)ock, (L)ogout, (r)eboot, (S)hutdown" {
        bindsym r exec systemctl reboot
        bindsym Shift+L exit
        bindsym l mode "default";exec i3lock;
        bindsym Shift+S exec systemctl poweroff

        bindsym Return mode "default"
        bindsym Escape mode "default"
}

bindsym $mod+0 mode "Exit (l)ock, (L)ogout, (r)eboot, (S)hutdown"
```

gaps config
```
# You can also use any non-zero value if you'd like to have a border
for_window [class=".*"] border pixel 0
gaps inner 8
smart_gaps on
```

bar config
```
status_command i3blocks
height 25
position top
font pango:Source Code Pro Bold 10
```

configure i3blocks and alacritty and x11-monitor (files included)

docker
```
sudo pacman -S docker
systemctl enable docker.service
systemctl start docker.service
sudo usermod -aG docker $USER
```

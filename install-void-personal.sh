#!/bin/bash

sudo xbps-install -S i3 polybar rofi feh pywal maim xclip xdotool pcmanfm ttf-bitstream-vera emptty brightnessctl kitty ark emptty xorg

[ -d ".config" ] && cp -r .config/* ~/.config/ && echo "Archivos de .config copiados a ~/.config." || echo "No se encontró .config."

[ -d "wall" ] && cp -r wall ~/ && echo "Carpeta wall copiada a ~." || echo "No se encontró wall."S2

[ -f ".config/polybar/launch.sh" ] && chmod +x ~/.config/polybar/launch.sh && echo "launch.sh ahora es ejecutable" || echo "No se encontró launch.sh."

wal -i ~/wall/zd.png > /dev/null 2>&1 && echo -e "\x1B[1;5mPUEDES CAMBIAR EL WALLPAPER CON SUPER +X" || echo "fallo xd"

sudo ln -s /etc/sv/emptty /var/service

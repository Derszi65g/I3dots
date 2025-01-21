#!/bin/bash

sudo pacman -S i3-wm polybar rofi feh ttf-jetbrains-mono-nerd python-pywal maim xclip xdotool pcmanfm ttf-bitstream-vera emptty

[ -d ".config" ] && cp -r .config/* ~/.config/ && echo "Archivos de .config copiados a ~/.config." || echo "No se encontró .config."

[ -d "wall" ] && cp -r wall ~/ && echo "Carpeta wall copiada a ~." || echo "No se encontró wall."

[ -f ".config/polybar/launch.sh" ] && chmod +x ~/.config/polybar/launch.sh && echo "launch.sh ahora es ejecutable" || echo "No se encontró launch.sh."

wal -i ~/wall/zd.png > /dev/null 2>&1 && echo -e "\x1B[1;5mPUEDES CAMBIAR EL WALLPAPER CON SUPER +X" || echo "fallo xd"

sudo systemctl enable emptty 
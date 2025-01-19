#!/bin/bash

[ -d ".config" ] && cp -r .config/* ~/.config/ && echo "Archivos de .config copiados a ~/.config." || echo "No se encontró .config."

[ -d "wall" ] && cp -r wall ~/ && echo "Carpeta wall copiada a ~." || echo "No se encontró wall."

[ -f ".config/polybar/launch.sh" ] && chmod +x ~/.config/polybar/launch.sh && echo "launch.sh ahora es ejecutable" || echo "No se encontró launch.sh."

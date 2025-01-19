#!/bin/bash

if [ -d ".config" ]; then
    cp -r .config/* ~/.config/
    echo "Los archivos de .config han sido copiados a ~/.config"
else
    echo "No se encontró la carpeta .config en el directorio actual."
fi

if [ -d "wall" ]; then
    cp -r wall ~/ 
    echo "La carpeta wall ha sido copiada a ~/."
else
    echo "No se encontró la carpeta wall en el directorio actual."
fi

if [ -f ".config/polybar/launch.sh" ]; then
    chmod +x ~/.config/polybar/launch.sh
    echo "El archivo launch.sh ahora es ejecutable."
else
    echo "No se encontró el archivo launch.sh en ~/.config/polybar."
fi

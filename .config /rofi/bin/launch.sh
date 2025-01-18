#!/bin/bash

# Leer la ruta de la imagen desde el archivo
IMAGE_PATH=$(cat ~/.cache/wal/wal)

# Ejecutar Rofi con la ruta de la imagen
rofi -show drun -theme-str "inputbar { background-image: url('$IMAGE_PATH',width );}"

#!/bin/bash

echo "=== Iniciando instalación de dotfiles (Hyprland + Waybar) ==="

# 1. Asegurar que existan las carpetas de destino en .config
mkdir -p ~/.config/hypr
mkdir -p ~/.config/waybar

# 2. Copiar los archivos de configuración
echo "Copiando configuraciones de Hyprland..."
cp -r config/hypr/* ~/.config/hypr/

echo "Copiando configuraciones de Waybar..."
cp -r config/waybar/* ~/.config/waybar/

# 3. Dar permisos de ejecución a scripts internos si los hubiera (opcional)
# chmod +x ~/.config/hypr/scripts/* 2>/dev/null

echo "=== ¡Instalación completada con éxito! ==="
echo "Recuerda recargar Hyprland con 'hyprctl reload' o reiniciar tu sesión."

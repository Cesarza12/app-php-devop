#!/bin/bash
# Script para agregar, hacer commit y push automáticamente

# Mensaje de commit por defecto si no se pasa uno
COMMIT_MSG=${1:-"Actualización desde Termux"}

# Entrar al proyecto (asegúrate de estar en la ruta correcta)
cd ~/deploy/app-php || exit

# Mostrar estado de git
echo "Estado actual de Git:"
git status

# Agregar todos los cambios
git add .

# Hacer commit
git commit -m "$COMMIT_MSG"

# Hacer push a la rama main
git push origin main

echo "Push completado con éxito!"

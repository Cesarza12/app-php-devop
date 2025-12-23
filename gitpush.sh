#!/bin/bash
# Script para agregar, hacer commit y push automáticamente

# Entrar al proyecto
cd ~/deploy/app-php || exit

# Mostrar estado de git
echo "Estado actual de Git:"
git status

# Agregar todos los cambios
git add .

# Pedir mensaje de commit si no se pasa como argumento
if [ -z "$1" ]; then
  read -p "Escribe el mensaje de commit: " COMMIT_MSG
else
  COMMIT_MSG="$1"
fi

# Hacer commit
git commit -m "$COMMIT_MSG"

# Hacer push a la rama main
git push origin main

echo "Push completado con éxito!"

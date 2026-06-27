#!/bin/bash

# Script educativo: Demostración de flujo git básico

echo "=== Demostración de Git Básico ==="
echo

# 1. Inicializar
echo "1. Inicializando repositorio..."
git init demo-repo
cd demo-repo
git config user.name "Estudiante"
git config user.email "estudiante@example.com"
echo

# 2. Crear archivo
echo "2. Creando primer archivo..."
echo "# Proyecto Demo" > README.md
git add README.md
git commit -m "docs: crear README inicial"
echo

# 3. Ver historial
echo "3. Historial de commits:"
git log --oneline
echo

# 4. Crear rama
echo "4. Creando rama de feature..."
git checkout -b feature/demo
echo "Rama creada: $(git branch --show-current)"
echo

# 5. Hacer cambios
echo "5. Agregando contenido..."
echo "## Instalación" >> README.md
git add README.md
git commit -m "docs: agregar sección de instalación"
echo

# 6. Ver diferencias
echo "6. Cambiando a main..."
git checkout main
echo "Rama actual: $(git branch --show-current)"
echo

# 7. Merge
echo "7. Fusionando rama feature..."
git merge feature/demo
echo

# 8. Ver historial final
echo "8. Historial final:"
git log --oneline --graph --all
echo

# Limpiar
echo "=== Demo completada ==="
echo "Para ver el repositorio demo: cd demo-repo"

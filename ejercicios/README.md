# 💻 Ejercicios Prácticos del Taller

En esta carpeta encontrarás 5 ejercicios progresivos para practicar Git y GitHub.

## 📋 Lista de Ejercicios

| # | Ejercicio | Dificultad | Tiempo |
|---|-----------|-----------|--------|
| 1 | [Mi Primer Commit](#ejercicio-1-mi-primer-commit) | ⭐ Fácil | 5 min |
| 2 | [Mi Primer PR](#ejercicio-2-mi-primer-pr) | ⭐ Fácil | 10 min |
| 3 | [Ramas y Merge](#ejercicio-3-ramas-y-merge) | ⭐⭐ Medio | 10 min |
| 4 | [Revertir Cambios](#ejercicio-4-revertir-cambios) | ⭐⭐ Medio | 10 min |
| 5 | [Búsqueda en Historial](#ejercicio-5-búsqueda-en-historial) | ⭐⭐⭐ Avanzado | 10 min |

---

## Ejercicio 1: Mi Primer Commit

### 🎯 Objetivo
Crear tu primer commit local.

### 📋 Pasos

```bash
# 1. Clonar el repositorio
git clone https://github.com/yfernandeza/pruebagithub.git
cd pruebagithub

# 2. Crear archivo nuevo
echo "# Mi Primer Archivo" > mi_nombre.txt

# 3. Ver el cambio
git status

# 4. Preparar el cambio
git add mi_nombre.txt

# 5. Ver cambio preparado
git status

# 6. Hacer commit
git commit -m "docs: agregar mi_nombre.txt"

# 7. Ver el commit
git log --oneline

# 8. Ver detalles
git show
```

### ✅ Resultado Esperado

```
On branch master
nothing added to commit

On branch master

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   mi_nombre.txt

[master xxxxxxx] docs: agregar mi_nombre.txt
 1 file changed, 1 insertion(+)
 create mode 100644 mi_nombre.txt

xxxxxxx (HEAD -> master) docs: agregar mi_nombre.txt
```

### 📚 Referencias
- [Tutorial Principiantes - Paso 8-12](../documentacion/tutorial-principiantes.md)
- [Cheat Sheet - Trabajando Localmente](../documentacion/cheat-sheet.md)

---

## Ejercicio 2: Mi Primer PR

### 🎯 Objetivo
Crear tu primer Pull Request completo.

### 📋 Pasos

```bash
# 1. En GitHub, haz fork del repositorio
# Ve a https://github.com/yfernandeza/pruebagithub
# Click en "Fork"

# 2. Clonar tu fork
git clone https://github.com/TU_USUARIO/pruebagithub.git
cd pruebagithub

# 3. Crear rama
git checkout -b practice/tu-nombre

# 4. Crear archivo con presentación
echo "# Hola soy Tu Nombre" > presentacion.md

# 5. Preparar y commit
git add presentacion.md
git commit -m "docs: agregar mi presentación"

# 6. Push a tu fork
git push -u origin practice/tu-nombre

# 7. En GitHub:
# - Ve a tu fork
# - Click "Compare & pull request"
# - Escribe descripción clara
# - Click "Create pull request"
```

### 📝 Descripción del PR (Ejemplo)

```markdown
## 📝 Mi Presentación Personal

Agregué un archivo con mi presentación para el taller.

## Cambios
- Archivo presentacion.md con información personal
- Formato markdown

## Checklist
- [x] He leído el tutorial
- [x] Mi archivo tiene buen formato
- [x] El commit tiene buen mensaje
```

### ✅ Resultado Esperado
Tu PR aparece en https://github.com/yfernandeza/pruebagithub/pulls

### 📚 Referencias
- [Tutorial Principiantes - Completo](../documentacion/tutorial-principiantes.md)
- [Guía Colaboración](../documentacion/colaboracion.md)
- [Templates](../ejemplos/colaboracion/templates.md)

---

## Ejercicio 3: Ramas y Merge

### 🎯 Objetivo
Practicar creación de múltiples ramas y fusión.

### 📋 Pasos

```bash
# 1. Asegúrate de estar en master
git checkout master
git pull origin master

# 2. Crear primera rama
git checkout -b feature/nueva-seccion
echo "# Nueva Sección" > nueva_seccion.md
git add nueva_seccion.md
git commit -m "feat: agregar nueva sección"

# 3. Volver a master
git checkout master

# 4. Crear segunda rama
git checkout -b feature/mejoras
echo "# Mejoras" > mejoras.md
git add mejoras.md
git commit -m "feat: agregar mejoras"

# 5. Volver a master
git checkout master

# 6. Fusionar primera rama
git merge feature/nueva-seccion
git log --graph --oneline --all

# 7. Fusionar segunda rama
git merge feature/mejoras
git log --graph --oneline --all

# 8. Ver todas las ramas
git branch -a
```

### ✅ Resultado Esperado

```
* xxxxxxx (HEAD -> master) Merge branch 'feature/mejoras'
|\
| * xxxxxxx (feature/mejoras) feat: agregar mejoras
* |   xxxxxxx Merge branch 'feature/nueva-seccion'
|\ \
| * | xxxxxxx (feature/nueva-seccion) feat: agregar nueva sección
```

### 📚 Referencias
- [Básico - Fase 2](../documentacion/basico.md)
- [Intermedio - Fase 3](../documentacion/intermedio.md)
- [Flujo de Trabajo](../ejemplos/ramas/flujo-trabajo.md)

---

## Ejercicio 4: Revertir Cambios

### 🎯 Objetivo
Aprender a deshacer cambios de forma segura.

### 📋 Pasos

```bash
# 1. Crear rama de prueba
git checkout -b practice/revert-test

# 2. Crear archivo
echo "Contenido inicial" > test.txt
git add test.txt
git commit -m "docs: crear test.txt"

# 3. Hacer segundo commit
echo "Contenido modificado" > test.txt
git add test.txt
git commit -m "docs: modificar test.txt"

# 4. Ver commits
git log --oneline

# 5. Ver contenido actual
cat test.txt

# 6. OPCIÓN A: Usar revert (crea nuevo commit)
git revert HEAD
# Se abre editor, guardar mensaje

# 7. Ver que el archivo se revirtió
cat test.txt

# 8. Ver el historial con el nuevo commit
git log --oneline

# 9. OPCIÓN B: Usar reset (solo en ramas locales)
git reset --soft HEAD~1  # Mantiene cambios
git reset --mixed HEAD~1 # Descarta cambios preparados
git reset --hard HEAD~1  # Descarta todo ⚠️
```

### ✅ Resultado Esperado

```
# Con revert:
Contenido inicial

# Log muestra:
xxxxxxx Revert "docs: modificar test.txt"
xxxxxxx docs: modificar test.txt
xxxxxxx docs: crear test.txt
```

### 💡 Diferencias Clave
- `git reset` - Elimina commits (solo locales)
- `git revert` - Crea commit inverso (seguro en ramas públicas)
- `git restore` - Restaura archivo a estado anterior

### 📚 Referencias
- [Avanzado - Fase 7](../documentacion/avanzado.md)
- [Cheat Sheet - Deshacer](../documentacion/cheat-sheet.md)

---

## Ejercicio 5: Búsqueda en Historial

### 🎯 Objetivo
Dominar comandos de búsqueda y análisis.

### 📋 Pasos

```bash
# 1. Ver todos los commits
git log

# 2. Vista compacta
git log --oneline

# 3. Ver árbol de ramas
git log --graph --oneline --all

# 4. Últimos N commits
git log -n 5

# 5. Ver cambios en commits
git log -p -n 2

# 6. Ver estadísticas
git log --stat

# 7. Commits de un archivo
git log documentacion/basico.md

# 8. Commits por autor
git log --author="name"

# 9. Commits con palabra clave
git log --grep="feat:"

# 10. Ver detalles de commit específico
git show 313e892

# 11. Ver archivo en commit específico
git show 313e892:documentacion/basico.md

# 12. Buscar en código
git grep "git commit"

# 13. Ver quién cambió cada línea
git blame documentacion/basico.md

# 14. Ver cambios entre commits
git diff 313e892 9b7382e
```

### 📊 Salida Esperada

```
313e892 docs: agregar documentación base
9b7382e docs: agregar ejemplos
ba7ddc2 docs: agregar documentación base

graph muestra árbol visual de commits
```

### 💡 Tips Útiles

```bash
# Alias para facilitar
git config --global alias.visual 'log --graph --oneline --all'
git config --global alias.last 'log -1 HEAD'

# Luego usar
git visual
git last
```

### 📚 Referencias
- [Avanzado - Fase 9](../documentacion/avanzado.md)
- [Cheat Sheet - Historial](../documentacion/cheat-sheet.md)

---

## 🎯 Próximos Pasos

Después de completar los 5 ejercicios:

1. **Básico Dominado** ✅
   - Crea más ramas y experimenta
   - Haz algunos PRs reales en este repositorio

2. **Intermedio** 📚
   - Lee documentacion/intermedio.md
   - Practica rebase vs merge
   - Resuelve conflictos de merge deliberadamente

3. **Avanzado** 🚀
   - Lee documentacion/avanzado.md
   - Experimenta con rebase interactivo
   - Crea tags y releases
   - Usa cherry-pick para commits específicos

---

## 🆘 Si Algo Sale Mal

```bash
# Ver status en cualquier momento
git status

# Ver cambios
git diff

# Si hiciste algo malo en rama local
git reset --hard HEAD

# Recuperar rama borrada
git reflog

# Cancelar merge
git merge --abort

# Cancelar rebase
git rebase --abort
```

---

## 📊 Matriz de Referencia

| Comando | Cuándo Usar | Reversible |
|---------|-----------|-----------|
| `git reset` | Solo localmente | ✅ (con reflog) |
| `git revert` | Cambios públicos | ✅ (nuevo commit) |
| `git restore` | Descartar cambios | ⚠️ |
| `git checkout` | Cambiar rama | ✅ |
| `git merge` | Fusionar ramas | ✅ (con merge --abort) |
| `git rebase` | Historial limpio | ⚠️ (solo local) |

---

**¡Felicidades! Has completado todos los ejercicios.** 🎊

Ahora eres competente en Git y GitHub. ¡Sigue practicando! 🚀

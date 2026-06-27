# 📝 Soluciones a los Ejercicios

Este archivo contiene las soluciones paso a paso para cada ejercicio.

## Ejercicio 1: Mi Primer Commit - SOLUCIÓN

### Paso a Paso Completo

```bash
# PASO 1: Clonar repositorio
$ git clone https://github.com/yfernandeza/pruebagithub.git
Cloning into 'pruebagithub'...
remote: Enumerating objects: 50, done.
...
$ cd pruebagithub

# PASO 2: Crear archivo
$ echo "# Mi Primer Archivo" > mi_nombre.txt

# PASO 3: Ver status
$ git status
On branch master
Your branch is up to date with 'origin/master'.

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        mi_nombre.txt

nothing added to commit but untracked files present (use "git track" to track)

# PASO 4: Preparar cambio
$ git add mi_nombre.txt

# PASO 5: Ver status
$ git status
On branch master

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   mi_nombre.txt

# PASO 6: Hacer commit
$ git commit -m "docs: agregar mi_nombre.txt"
[master 7a8b9c0] docs: agregar mi_nombre.txt
 1 file changed, 1 insertion(+)
 create mode 100644 mi_nombre.txt

# PASO 7: Ver commits
$ git log --oneline
7a8b9c0 (HEAD -> master) docs: agregar mi_nombre.txt
0abaa8c docs: agregar tutorial para principiantes y cheat sheet
...

# PASO 8: Ver detalles
$ git show
commit 7a8b9c0...
Author: Tu Nombre <tu@email.com>
Date:   Fri Jun 27 08:20:00 2026 +0000

    docs: agregar mi_nombre.txt

diff --git a/mi_nombre.txt b/mi_nombre.txt
new file mode 100644
index 0000000..12a9b8
--- /dev/null
+++ b/mi_nombre.txt
@@ -0,0 +1 @@
+# Mi Primer Archivo
```

### ✅ Verificación
- [ ] Archivo `mi_nombre.txt` existe
- [ ] Commit aparece en `git log`
- [ ] Mensaje de commit es descriptivo

---

## Ejercicio 2: Mi Primer PR - SOLUCIÓN

### Paso a Paso Completo

```bash
# PASO 1: En GitHub
# Ve a https://github.com/yfernandeza/pruebagithub
# Click botón "Fork" (esquina superior derecha)
# Espera a que complete

# PASO 2: Clonar tu fork
$ git clone https://github.com/TU_USUARIO/pruebagithub.git
$ cd pruebagithub

# PASO 3: Crear rama
$ git checkout -b practice/juan-perez
Switched to a new branch 'practice/juan-perez'

# PASO 4: Crear archivo presentación
$ echo "# Presentación - Juan Pérez" > presentacion.md
$ echo "" >> presentacion.md
$ echo "Soy Juan Pérez, estudiante del taller de Git." >> presentacion.md

# PASO 5: Ver cambios
$ git status
On branch practice/juan-perez
Untracked files:
  (use "git add <file>..." to include in what will be committed)
        presentacion.md

# PASO 6: Preparar cambio
$ git add presentacion.md

# PASO 7: Hacer commit
$ git commit -m "docs: agregar presentación personal"
[practice/juan-perez 9d4e5f1] docs: agregar presentación personal
 1 file changed, 3 insertions(+)
 create mode 100644 presentacion.md

# PASO 8: Push a remoto
$ git push -u origin practice/juan-perez
Enumerating objects: 4, done.
...
To https://github.com/juan-perez/pruebagithub.git
 * [new branch]      practice/juan-perez -> practice/juan-perez
Branch 'practice/juan-perez' set up to track 'origin/practice/juan-perez'.

# PASO 9: En GitHub
# - Ve a tu fork en https://github.com/juan-perez/pruebagithub
# - Verás banner amarillo "Compare & pull request"
# - Click en "Compare & pull request"
# - Llena descripción:

## 📝 Mi Presentación Personal

He agregado mi presentación al taller de Git.

## Cambios Realizados
- Archivo presentacion.md con mi introducción
- Formato markdown

## Tipo de Cambio
- [x] Documentación

## Checklist
- [x] He leído el tutorial
- [x] Mi archivo tiene formato correcto
- [x] Mi commit tiene buen mensaje

# - Click "Create pull request"

# RESULTADO:
# Tu PR aparece en https://github.com/yfernandeza/pruebagithub/pulls
```

### ✅ Verificación
- [ ] Fork creado en tu cuenta
- [ ] Rama `practice/tu-nombre` existe
- [ ] PR creado y visible en GitHub
- [ ] Descripción clara del PR

---

## Ejercicio 3: Ramas y Merge - SOLUCIÓN

### Paso a Paso Completo

```bash
# PASO 1: Estar en master
$ git checkout master
Switched to branch 'master'
$ git pull origin master
Already up to date.

# PASO 2: Crear primera rama
$ git checkout -b feature/nueva-seccion
Switched to a new branch 'feature/nueva-seccion'

# PASO 3: Hacer cambios
$ echo "# Nueva Sección" > nueva_seccion.md
$ echo "Contenido de la nueva sección" >> nueva_seccion.md

# PASO 4: Commit
$ git add nueva_seccion.md
$ git commit -m "feat: agregar nueva sección"
[feature/nueva-seccion 3e7f8g2] feat: agregar nueva sección
 1 file changed, 2 insertions(+)
 create mode 100644 nueva_seccion.md

# PASO 5: Volver a master
$ git checkout master
Switched to branch 'master'

# PASO 6: Crear segunda rama
$ git checkout -b feature/mejoras
Switched to a new branch 'feature/mejoras'

# PASO 7: Hacer cambios
$ echo "# Mejoras" > mejoras.md
$ echo "Lista de mejoras sugeridas" >> mejoras.md

# PASO 8: Commit
$ git add mejoras.md
$ git commit -m "feat: agregar lista de mejoras"
[feature/mejoras 4f8g9h3] feat: agregar lista de mejoras
 1 file changed, 2 insertions(+)
 create mode 100644 mejoras.md

# PASO 9: Volver a master
$ git checkout master
Switched to branch 'master'

# PASO 10: Ver ramas
$ git branch
  feature/mejoras
  feature/nueva-seccion
* master

# PASO 11: Ver árbol antes de merge
$ git log --graph --oneline --all
* 4f8g9h3 (feature/mejoras) feat: agregar lista de mejoras
| * 3e7f8g2 (feature/nueva-seccion) feat: agregar nueva sección
|/
* 0abaa8c (HEAD -> master) docs: agregar tutorial...

# PASO 12: Fusionar primera rama
$ git merge feature/nueva-seccion
Updating 0abaa8c..3e7f8g2
Fast-forward
 nueva_seccion.md | 2 ++
 1 file changed, 1 insertion(+)
 create mode 100644 nueva_seccion.md

# PASO 13: Ver commits
$ git log --oneline
3e7f8g2 (HEAD -> master) feat: agregar nueva sección
0abaa8c docs: agregar tutorial...

# PASO 14: Fusionar segunda rama
$ git merge feature/mejoras
Merge made by the 'recursive' strategy.
 mejoras.md | 2 ++
 1 file changed, 1 insertion(+)
 create mode 100644 mejoras.md

# PASO 15: Ver árbol final
$ git log --graph --oneline --all
*   5i9j0k4 (HEAD -> master) Merge branch 'feature/mejoras'
|\
| * 4f8g9h3 (feature/mejoras) feat: agregar lista de mejoras
* | 3e7f8g2 feat: agregar nueva sección
|/
* 0abaa8c docs: agregar tutorial...

# PASO 16: Ver archivos
$ ls *.md
mejoras.md
nueva_seccion.md
presentacion.md
```

### ✅ Verificación
- [ ] Ambas ramas creadas exitosamente
- [ ] Ambos commits visibles en `git log`
- [ ] Master contiene cambios de ambas ramas
- [ ] `git log --graph` muestra árbol visual correcto

---

## Ejercicio 4: Revertir Cambios - SOLUCIÓN

### Opción A: Usar git revert (Recomendado)

```bash
# PASO 1: Crear rama de prueba
$ git checkout -b practice/revert-test
Switched to a new branch 'practice/revert-test'

# PASO 2: Crear archivo inicial
$ echo "Contenido inicial" > test.txt
$ git add test.txt
$ git commit -m "docs: crear test.txt"
[practice/revert-test 6j0k1l5] docs: crear test.txt
 1 file changed, 1 insertion(+)
 create mode 100644 test.txt

# PASO 3: Modificar archivo
$ echo "Contenido modificado" > test.txt
$ cat test.txt
Contenido modificado

# PASO 4: Hacer commit
$ git add test.txt
$ git commit -m "docs: modificar test.txt"
[practice/revert-test 7k1l2m6] docs: modificar test.txt
 1 file changed, 1 insertion(+)
 create mode 100644 test.txt

# PASO 5: Ver commits
$ git log --oneline
7k1l2m6 (HEAD -> practice/revert-test) docs: modificar test.txt
6j0k1l5 docs: crear test.txt
0abaa8c docs: agregar tutorial...

# PASO 6: Ver contenido actual
$ cat test.txt
Contenido modificado

# PASO 7: Revertir último commit
$ git revert HEAD
# Se abre editor, guardar el mensaje por defecto

[practice/revert-test 8l2m3n7] Revert "docs: modificar test.txt"
 1 file changed, 1 insertion(+)

# PASO 8: Ver que se revirtió
$ cat test.txt
Contenido inicial

# PASO 9: Ver commits
$ git log --oneline
8l2m3n7 (HEAD -> practice/revert-test) Revert "docs: modificar test.txt"
7k1l2m6 docs: modificar test.txt
6j0k1l5 docs: crear test.txt
0abaa8c docs: agregar tutorial...
```

### Opción B: Usar git reset (Solo Localmente)

```bash
# Si la rama es solo local, puedes usar reset
$ git reset --soft HEAD~1
# Cambios vuelven a staging

$ git reset --mixed HEAD~1
# O equivalente: git reset HEAD~1
# Cambios vuelven a working directory

$ git reset --hard HEAD~1
# ⚠️ Peligro: Elimina todos los cambios
```

### ✅ Verificación
- [ ] Con revert: Nuevo commit "Revert..." aparece en log
- [ ] Con revert: Archivo vuelve a estado anterior
- [ ] Con reset: Histórico se modifica según opción usada

---

## Ejercicio 5: Búsqueda en Historial - SOLUCIÓN

### Paso a Paso Completo

```bash
# PASO 1: Ver todos los commits
$ git log
commit 0abaa8c...
Author: yfernandeza <yfernandeza@users.noreply.github.com>
Date:   Fri Jun 27 08:10:00 2026 +0000
    docs: agregar tutorial para principiantes y cheat sheet
... (más commits)

# PASO 2: Vista compacta
$ git log --oneline
0abaa8c docs: agregar tutorial para principiantes y cheat sheet
313e892 docs: agregar documentación intermedia y avanzada
9b7382e docs: agregar ejemplos de commits, ramas y scripts
ba7ddc2 docs: agregar documentación base
89815d6 Initial commit

# PASO 3: Ver árbol de ramas
$ git log --graph --oneline --all
*   0abaa8c (HEAD -> master) docs: agregar tutorial...
|\
| * fb085f2 (feature/agregar-guia-colaboracion) docs: agregar templates...
|/
* 313e892 docs: agregar documentación...

# PASO 4: Últimos N commits
$ git log -n 3
(mostrará últimos 3 commits con detalles)

# PASO 5: Ver cambios en commits
$ git log -p -n 1
(mostrará último commit con todos los cambios)

# PASO 6: Ver estadísticas
$ git log --stat
commit 0abaa8c...
 documentacion/cheat-sheet.md            | 350 +++++
 documentacion/tutorial-principiantes.md | 421 +++
 ejemplos/colaboracion/templates.md      | 181 ++

# PASO 7: Commits de archivo específico
$ git log documentacion/basico.md
commit ba7ddc2...
Author: ...
    docs: agregar documentación base

# PASO 8: Commits por autor
$ git log --author="yfernandeza"
(muestra todos los commits del autor)

# PASO 9: Commits con palabra clave
$ git log --grep="feat:"
commit 313e892...
    docs: agregar documentación intermedia y avanzado

# PASO 10: Detalles de commit específico
$ git show 313e892
commit 313e892...
Author: ...
Date: Fri Jun 27...
    docs: agregar documentación...

diff --git a/documentacion/avanzado.md b/documentacion/avanzado.md
new file mode 100644
index 0000000..8707
--- /dev/null
+++ b/documentacion/avanzado.md
@@ -0,0 +1,8707 @@
+# 📖 Git Avanzado...

# PASO 11: Ver archivo en commit específico
$ git show 313e892:documentacion/basico.md
(muestra contenido de basico.md en ese commit)

# PASO 12: Buscar en código
$ git grep "git commit"
documentacion/basico.md:- `git commit` - Confirmar cambios
documentacion/cheat-sheet.md:# Hacer commit
ejemplos/commits/ejemplo1.txt:```

# PASO 13: Ver quién cambió cada línea
$ git blame documentacion/basico.md
313e892 (yfernandeza 2026-06-27 08:05) # 📖 Git Básico - Fase 1-2
313e892 (yfernandeza 2026-06-27 08:05)
313e892 (yfernandeza 2026-06-27 08:05) Aprende los comandos más...

# PASO 14: Ver cambios entre commits
$ git diff 313e892 9b7382e
diff --git a/documentacion/avanzado.md b/documentacion/avanzado.md
new file mode 100644
index 0000000..8707
--- /dev/null
+++ b/documentacion/avanzado.md
@@ -0,0 +1,8707 @@
+# 📖 Git Avanzado...
```

### Configurar Aliases

```bash
# Crear alias
$ git config --global alias.visual 'log --graph --oneline --all'
$ git config --global alias.last 'log -1 HEAD'
$ git config --global alias.history 'log --oneline'

# Usar aliases
$ git visual
$ git last
$ git history
```

### ✅ Verificación
- [ ] `git log` muestra todos los commits
- [ ] `git log --graph` muestra árbol visual
- [ ] `git blame` muestra quién cambió cada línea
- [ ] `git grep` encuentra texto en código
- [ ] Aliases funcionan correctamente

---

## 🎯 Resumen: Conceptos Clave

| Concepto | Explicación |
|----------|------------|
| **Commit** | Guardar cambios con un mensaje descriptivo |
| **Rama** | Línea de trabajo independiente |
| **Merge** | Fusionar una rama en otra |
| **Revert** | Deshacer un commit creando uno nuevo |
| **Reset** | Deshacer commits (solo locales) |
| **Log** | Ver historial de commits |

---

**¡Excelente! Has completado todas las soluciones.** 🎊

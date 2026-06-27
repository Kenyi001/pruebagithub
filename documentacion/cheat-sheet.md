# ⚡ Git Cheat Sheet - Referencia Rápida

Guía rápida con los comandos más usados del taller.

## Instalación y Configuración

```bash
# Ver versión
git --version

# Configurar nombre
git config --global user.name "Tu Nombre"

# Configurar email
git config --global user.email "tu@email.com"

# Ver configuración
git config --list
```

## Trabajando Localmente

```bash
# Clonar repositorio
git clone https://github.com/usuario/repo.git

# Entrar a carpeta
cd repo

# Ver estado
git status

# Ver cambios
git diff

# Preparar cambios
git add archivo.txt
git add .                    # Todos los archivos

# Hacer commit
git commit -m "mensaje"

# Ver historial
git log --oneline
git log -n 3                 # Últimos 3 commits
```

## Ramas

```bash
# Ver ramas locales
git branch

# Ver todas las ramas
git branch -a

# Crear rama
git branch nombre-rama

# Crear y cambiar a rama
git checkout -b nombre-rama
git switch -c nombre-rama   # Forma moderna

# Cambiar de rama
git checkout nombre-rama
git switch nombre-rama      # Forma moderna

# Eliminar rama local
git branch -d nombre-rama

# Eliminar rama remota
git push origin --delete nombre-rama

# Renombrar rama
git branch -m nombre-nuevo
```

## Cambios en Remoto

```bash
# Ver remotes
git remote -v

# Agregar remote
git remote add origin https://github.com/usuario/repo.git

# Cambiar URL
git remote set-url origin https://github.com/usuario/repo.git

# Traer cambios (sin fusionar)
git fetch

# Traer cambios y fusionar
git pull

# Enviar cambios
git push

# Push de rama nueva
git push -u origin nombre-rama

# Push de rama específica
git push origin nombre-rama
```

## Fusionar Cambios

```bash
# Fusionar rama en la actual
git merge nombre-rama

# Rebase (historial lineal)
git rebase nombre-rama

# Ver conflictos
git status

# Resolver y completar
git add archivo-resuelto
git merge --continue
git rebase --continue

# Cancelar
git merge --abort
git rebase --abort
```

## Deshacer Cambios

```bash
# Deshacer cambios en archivo
git restore archivo.txt

# Descartar cambios no preparados
git restore .

# Descartar cambios preparados
git restore --staged archivo.txt

# Deshacer último commit (mantiene cambios)
git reset --soft HEAD~1

# Deshacer último commit (elimina cambios)
git reset --hard HEAD~1

# Revertir commit específico (crea nuevo commit)
git revert abc1234
```

## Stash (Guardar Trabajo Temporal)

```bash
# Guardar cambios
git stash

# Guardar con descripción
git stash save "descripción"

# Ver stashes
git stash list

# Aplicar último stash
git stash pop

# Aplicar stash específico
git stash pop stash@{0}

# Eliminar stash
git stash drop stash@{0}
```

## Historial y Búsqueda

```bash
# Ver commits detallados
git log -p

# Ver stats de cambios
git log --stat

# Gráfico visual
git log --graph --oneline --all

# Por autor
git log --author="Juan"

# Por fecha
git log --since="2 weeks ago"

# Por mensaje
git log --grep="feat:"

# De archivo específico
git log archivo.py

# Buscar en código
git grep "función"

# Quién cambió cada línea
git blame archivo.py

# Ver detalles de commit
git show abc1234
```

## GitHub CLI (gh)

```bash
# Ver status de autenticación
gh auth status

# Iniciar sesión
gh auth login

# Crear PR
gh pr create --title "Título" --body "Descripción"

# Ver PRs
gh pr list

# Ver PRs de una rama
gh pr list --head nombre-rama

# Crear issue
gh issue create --title "Título" --body "Descripción"

# Ver repo
gh repo view usuario/repo

# Crear release
gh release create v1.0.0 --title "Version 1.0.0"
```

## Tags y Releases

```bash
# Crear tag ligero
git tag v1.0.0

# Crear tag anotado
git tag -a v1.0.0 -m "mensaje"

# Ver tags
git tag

# Detalles de tag
git show v1.0.0

# Push tag
git push origin v1.0.0

# Push todos los tags
git push origin --tags

# Eliminar tag local
git tag -d v1.0.0

# Eliminar tag remoto
git push origin --delete v1.0.0
```

## Workflow Común: Mi Primer Contribución

```bash
# 1. Clonar tu fork
git clone https://github.com/TU_USUARIO/repo.git
cd repo

# 2. Crear rama
git checkout -b feature/nueva-funcion

# 3. Hacer cambios
echo "código" > archivo.py
git add .
git commit -m "feat: nueva funcionalidad"

# 4. Push
git push -u origin feature/nueva-funcion

# 5. En GitHub: Crear PR

# 6. Si piden cambios
git add .
git commit -m "review: feedback aplicado"
git push

# 7. Después del merge
git checkout main
git pull origin main
git branch -d feature/nueva-funcion
```

## Aliases Útiles

```bash
# Crear alias
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.unstage 'restore --staged'
git config --global alias.last 'log -1 HEAD'
git config --global alias.visual 'log --graph --oneline --all'

# Usar alias
git co main                  # = git checkout main
git br -a                    # = git branch -a
git visual                   # = git log --graph...
```

## Troubleshooting Rápido

| Problema | Solución |
|----------|----------|
| "No sé dónde estoy" | `git status` |
| "Quiero ver cambios" | `git diff` |
| "Cambié de rama sin querer" | `git checkout rama-anterior` |
| "Hice commit en rama equivocada" | `git cherry-pick abc1234` (en rama correcta) |
| "Quiero deshacer último commit" | `git reset --soft HEAD~1` |
| "Cambié mucho y quiero volver" | `git reset --hard HEAD` ⚠️ |
| "Recuperar rama borrada" | `git reflog` (buscar commit) |
| "Merge tiene conflicto" | Editar archivo, `git add`, `git commit` |
| "Push rechazado" | `git pull` primero, luego `git push` |
| "Necesito limpiar mi trabajo" | `git stash` (guardar para después) |

## Símbolos y Términos

```
HEAD              = Tu commit actual
HEAD~1            = Commit anterior
HEAD~3            = 3 commits atrás
origin            = Tu copia en GitHub
upstream          = Repositorio original (si es fork)
master/main       = Rama principal
feature/nombre    = Rama de feature
@{0}              = Referencia a elemento actual
```

## Color por Salida de Comandos

```
Verde    = Cambios positivos (archivos agregados)
Rojo     = Cambios negativos (archivos eliminados)
Amarillo = Cambios pendientes (modificados)
Azul     = Ramas
```

---

**Tip:** Guarda este archivo en favoritos para referencia rápida durante el taller. ⭐

# 🎓 Tutorial Paso a Paso: Mi Primer Contribución

Este tutorial está diseñado para **principiantes absolutos**. No necesitas conocimiento previo de Git.

## ⏱️ Tiempo Estimado: 30 minutos

---

## Paso 1: Instalar Git

### Windows:
1. Ve a https://git-scm.com/download/win
2. Descarga el instalador
3. Haz clic en siguiente, siguiente, siguiente...
4. Completa la instalación

### macOS:
```bash
brew install git
```

### Linux (Ubuntu/Debian):
```bash
sudo apt-get install git
```

---

## Paso 2: Verificar que Git Está Instalado

Abre tu terminal (Cmd, PowerShell, Terminal, o bash) y escribe:

```bash
git --version
```

**Deberías ver algo como:**
```
git version 2.42.0
```

✅ Si ves el número de versión, ¡Git está instalado!

---

## Paso 3: Configurar Git

Git necesita saber quién eres. En la terminal, escribe:

```bash
git config --global user.name "Tu Nombre"
```

**Ejemplo:**
```bash
git config --global user.name "Juan Pérez"
```

Luego configura tu email:

```bash
git config --global user.email "tu@email.com"
```

**Ejemplo:**
```bash
git config --global user.email "juan@example.com"
```

✅ Hecho. Git ya te conoce.

---

## Paso 4: Hacer Fork del Repositorio

Un "fork" es tu copia personal del proyecto.

1. Ve a https://github.com/yfernandeza/pruebagithub
2. Haz clic en el botón **"Fork"** (esquina superior derecha)
3. Espera a que termine
4. Verás que ahora tienes tu propia copia en `https://github.com/TU_USUARIO/pruebagithub`

✅ Ahora tienes tu propia copia del proyecto.

---

## Paso 5: Clonar tu Fork Localmente

Clonar significa descargar el código a tu computadora.

En la terminal, escribe:

```bash
git clone https://github.com/TU_USUARIO/pruebagithub.git
```

**Reemplaza `TU_USUARIO` con tu usuario de GitHub.**

**Ejemplo real:**
```bash
git clone https://github.com/juan-perez/pruebagithub.git
```

**Deberías ver:**
```
Cloning into 'pruebagithub'...
remote: Enumerating objects: 42, done.
remote: Counting objects: 100% (42/42), done.
...
```

✅ El código está en tu computadora.

---

## Paso 6: Entrar a la Carpeta

```bash
cd pruebagithub
```

**Verifica que estás en la carpeta correcta:**

```bash
git status
```

**Deberías ver:**
```
On branch master
nothing to commit, working tree clean
```

✅ Estás en el lugar correcto.

---

## Paso 7: Crear una Rama Personal

Una rama es tu "espacio de trabajo" donde puedes hacer cambios sin afectar el proyecto principal.

```bash
git checkout -b practice/tu-nombre
```

**Ejemplo real:**
```bash
git checkout -b practice/juan-perez
```

**Deberías ver:**
```
Switched to a new branch 'practice/juan-perez'
```

✅ Tienes tu rama personal.

---

## Paso 8: Crear un Archivo Nuevo

Vamos a crear un archivo con tu nombre.

```bash
echo "# Hola, soy TU_NOMBRE" > tu_nombre.md
```

**Ejemplo real:**
```bash
echo "# Hola, soy Juan Pérez" > juan_perez.md
```

**En Windows PowerShell:**
```powershell
Add-Content -Path "juan_perez.md" -Value "# Hola, soy Juan Pérez"
```

✅ Archivo creado.

---

## Paso 9: Ver el Cambio

Verifica que Git ve tu nuevo archivo:

```bash
git status
```

**Deberías ver:**
```
On branch practice/juan-perez

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        juan_perez.md

nothing added to commit but untracked files present (use "git add" to track)
```

**Esto significa:** "Git ve que creaste `juan_perez.md` pero no lo ha registrado todavía"

✅ Todo correcto.

---

## Paso 10: Preparar el Cambio (git add)

Ahora le dices a Git que quieres registrar este cambio.

```bash
git add tu_nombre.md
```

**Ejemplo real:**
```bash
git add juan_perez.md
```

**O para agregar todos los cambios:**
```bash
git add .
```

---

## Paso 11: Ver el Cambio Preparado

```bash
git status
```

**Deberías ver:**
```
On branch practice/juan-perez

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   juan_perez.md
```

**Esto significa:** "Git está listo para registrar este cambio"

✅ Cambio preparado.

---

## Paso 12: Hacer un Commit (Registrar el Cambio)

Un commit es como guardar una "foto" de tus cambios.

```bash
git commit -m "docs: agregar mi presentación al taller"
```

**Deberías ver:**
```
[practice/juan-perez a1b2c3d] docs: agregar mi presentación al taller
 1 file changed, 1 insertion(+)
 create mode 100644 juan_perez.md
```

✅ Cambio registrado en el historial.

---

## Paso 13: Ver tu Primer Commit

```bash
git log --oneline
```

**Deberías ver:**
```
a1b2c3d (HEAD -> practice/juan-perez) docs: agregar mi presentación al taller
313e892 docs: agregar documentación intermedia y avanzada
9b7382e docs: agregar ejemplos de commits, ramas y scripts
```

**Tu commit está aquí!** ✅

---

## Paso 14: Enviar tu Rama a GitHub

Ahora subes tu rama a GitHub.

```bash
git push -u origin practice/tu-nombre
```

**Ejemplo real:**
```bash
git push -u origin practice/juan-perez
```

**Deberías ver:**
```
Enumerating objects: 3, done.
Counting objects: 100% (3/3), done.
Delta compression using up to 8 threads
...
To https://github.com/juan-perez/pruebagithub.git
 * [new branch]      practice/juan-perez -> practice/juan-perez
Branch 'practice/juan-perez' set up to track 'origin/practice/juan-perez'.
```

✅ Tu rama está en GitHub.

---

## Paso 15: Crear un Pull Request

Un Pull Request (PR) es para pedirle al mantenedor que incluya tus cambios.

1. Ve a tu fork en GitHub: `https://github.com/TU_USUARIO/pruebagithub`
2. Verás un banner amarillo: **"Compare & pull request"**
3. Haz clic en **"Compare & pull request"**
4. Llena la descripción:

```markdown
## Mi Primer PR

He agregado mi presentación personal al taller.

## Cambios
- Creé archivo juan_perez.md con mi introducción

## Checklist
- [x] He seguido el tutorial paso a paso
- [x] Mi archivo tiene buen formato
- [x] Mi commit tiene buen mensaje
```

5. Haz clic en **"Create pull request"**

✅ ¡Tu PR está creado! 🎉

---

## Paso 16: Ver tu PR

El PR aparece en: https://github.com/yfernandeza/pruebagithub/pulls

Ahora otros pueden ver:
- Tu código
- Tu mensaje de commit
- La rama que creaste
- Los cambios exactos

---

## 🎊 ¡Lo Hiciste!

### Resumen de lo que aprendiste:

| Comando | Qué hace |
|---------|----------|
| `git config` | Decirle a Git quién eres |
| `git clone` | Descargar código de GitHub |
| `git checkout -b` | Crear rama nueva |
| `git add` | Preparar cambios |
| `git commit` | Registrar cambios |
| `git push` | Enviar a GitHub |
| PR | Pedir incluir cambios |

### Conceptos que dominas:

- ✅ Instalación y configuración de Git
- ✅ Fork y clone
- ✅ Crear una rama
- ✅ Hacer cambios y commits
- ✅ Push a GitHub
- ✅ Crear Pull Request

---

## 🤔 Preguntas Frecuentes

### P: ¿Qué es un "commit"?
**R:** Un commit es como guardar tu trabajo en un punto específico. Creas un mensaje describiendo qué cambió. Así puedes volver atrás si quieres.

### P: ¿Qué es una "rama"?
**R:** Una rama es una línea de trabajo separada. Puedes trabajar sin afectar el código principal. Es como un "sandbox" seguro.

### P: ¿Qué es un "fork"?
**R:** Es tu propia copia del proyecto. Aquí puedes hacer cambios sin permiso, luego pides que los incluyan con un PR.

### P: ¿Qué es un "Pull Request"?
**R:** Es una petición para que el mantenedor incluya tus cambios. Él/ella puede revisar, comentar, o aprobar.

### P: ¿Qué significa "push"?
**R:** Es enviar tus cambios locales a GitHub. Después, otros pueden verlos.

---

## 🚀 Próximos Pasos

Ahora que dominaste lo básico, puedes:

1. **Hacer más cambios** en tu rama
2. **Crear más commits** con diferentes cambios
3. **Leer la documentación** en `/documentacion/basico.md`
4. **Aprender ramas y merges** en `/documentacion/intermedio.md`
5. **Explorar técnicas avanzadas** en `/documentacion/avanzado.md`

---

## 📝 Notas para el Facilitador

Este tutorial está diseñado para que los estudiantes:
- Salgan del aula habiendo hecho un PR real
- Entiendan el flujo completo: fork → clone → rama → cambios → push → PR
- Tengan su nombre en el repositorio como prueba
- Puedan repetir el proceso con otros proyectos

**Duración recomendada:** 30 minutos guiado + 15 minutos de preguntas

---

**¡Felicidades! ¡Ya eres parte de la comunidad de desarrolladores!** 🎓

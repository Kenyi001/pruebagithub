## Ejemplo: Flujo de Trabajo con Ramas

### Scenario: Agregar Función de Login

```bash
# 1. Estar en rama main
git checkout main
git pull origin main

# 2. Crear rama feature
git checkout -b feature/login-system

# 3. Hacer cambios y commits
echo "función de login" > login.py
git add login.py
git commit -m "feat: crear módulo de autenticación"

echo "hash de contraseña" > hash.py
git add hash.py
git commit -m "feat: agregar hasheado de contraseñas"

# 4. Push a remoto
git push origin feature/login-system

# 5. En GitHub: Crear Pull Request
# (Ver en GitHub web)

# 6. Si necesitas más cambios
git add cambios.py
git commit -m "fix: mejorar validación de email"
git push origin feature/login-system

# 7. Después del merge en GitHub
git checkout main
git pull origin main

# 8. Opcional: Borrar rama local
git branch -d feature/login-system
```

### Nomenclatura de Ramas

- `feature/nombre-feature` - Nuevas funcionalidades
- `bugfix/nombre-bug` - Correcciones de bugs
- `hotfix/nombre-urgente` - Fixes urgentes en producción
- `docs/nombre-docs` - Cambios de documentación
- `test/nombre-test` - Tests nuevos

### Resolver Conflictos

```bash
# 1. Ver conflictos
git status

# 2. Editar archivos conflictivos
# Buscar marcadores: <<<<<<, ======, >>>>>>

# 3. Resolver manualmente

# 4. Preparar cambios
git add archivo-resuelto.py

# 5. Completar merge
git commit -m "merge: resolver conflictos con main"
```

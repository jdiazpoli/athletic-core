# Política del repositorio (Plan de gestión de configuración)

## Ramas

| Rama | Uso | Quién la actualiza |
|---|---|---|
| `main` | Producción / entrega estable | Solo recibe fusiones desde `develop`, después de aprobar la matriz de pruebas (MDR) y con aprobación del Development Manager (CEV) |
| `develop` | Integración continua: aquí convergen los módulos completados cada semana | Solo por pull request revisado |
| `feature/<modulo>-<iniciales>` | Trabajo individual. Ejemplos: `feature/catalogo-cev`, `feature/carrito-ofa`, `feature/listado-jdg` | Su autor |

**Nadie hace push directo a `main` ni a `develop`.** GitHub lo bloquea con reglas de protección.

## Flujo para cada módulo

1. Actualiza `develop`:
   `git checkout develop` y luego `git pull`
2. Crea tu rama:
   `git checkout -b feature/catalogo-cev`
3. Programa y haz commits pequeños, empezando por tus iniciales:
   `git commit -m "CEV: agrega filtro por categoría en CatalogService.php"`
4. Ejecuta las pruebas unitarias en tu computador:
   `./scripts/run-tests.sh` (o `scripts\run-tests.bat` en Windows)
5. Sube la rama:
   `git push -u origin feature/catalogo-cev`
6. En GitHub abre un **Pull Request hacia `develop`** y llena la plantilla:
   descripción de cambios, evidencia de pruebas unitarias locales y defectos encontrados.
7. Asigna como revisor a tu compañero de inspección. El PR se fusiona solo con **al menos 1 aprobación** y las pruebas de GitHub Actions en verde.
8. Después de fusionar, borra tu rama.

## Paso de `develop` a `main`

Al cerrar cada ensamble, la Quality/Process Manager (MDR) ejecuta la matriz de pruebas sobre `develop`.
Si pasa, se abre un PR de `develop` a `main` que debe aprobar el Development Manager (CEV).

## Registro TSPi

Cada vez que trabajes en el repositorio, anota tus horas en **LOGT** (fecha, inicio, fin, fase, tarea) y los defectos en **LOGD** (tipo, fase en que se introdujo, fase en que se encontró, tiempo de corrección). El historial de commits sirve como respaldo de esos registros.

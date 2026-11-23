# Cómo trabajar en el repositorio

## Ramas

| Rama | Para qué |
|---|---|
| `main` | Versión estable. Solo se actualiza desde `develop` al cerrar un ensamble. |
| `develop` | Integración. Aquí se unen los componentes ya revisados. |
| `feature/<componente>` | Una rama por componente, por ejemplo `feature/registro-login`, `feature/busqueda-avanzada`. |

## Pasos para cada componente

1. Actualizar `develop`: `git checkout develop` y `git pull`.
2. Crear la rama: `git checkout -b feature/nombre-del-componente`.
3. Programar y hacer commits pequeños con mensajes claros:
   `git commit -m "CEV: agrega servicio de registro de usuario"`.
4. Subir la rama: `git push -u origin feature/nombre-del-componente`.
5. Abrir un **Pull Request** hacia `develop` y asignar como revisor a tu compañero de inspección.
6. Solo se une (merge) cuando el revisor lo aprueba y las pruebas unitarias pasan.

## Mensajes de commit

Empieza con tus iniciales y describe qué hiciste: `JDG: crea listado de productos`.

## Registro TSPi

Cada vez que trabajes, anota tus horas en LOGT y los defectos que encuentres en LOGD (ver plan de calidad, acta de lanzamiento 5).

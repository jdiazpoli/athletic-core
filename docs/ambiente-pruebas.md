# Ambiente de pruebas compartido

Costo: $0. Todo se ejecuta con herramientas gratuitas.

| Elemento | Cómo funciona |
|---|---|
| Código de pruebas | La rama `develop` es la versión que todos prueban. |
| Pruebas automáticas | GitHub Actions ejecuta las pruebas unitarias en cada pull request y en cada cambio de `develop` y `main` (pestaña **Actions**). |
| Base de datos de pruebas | Cada integrante crea la base `athletic_core` en su MySQL local con `database/01_crear_tablas.sql` y `database/02_datos_iniciales.sql`. |
| Pagos | Credenciales de prueba (sandbox) de Mercado Pago o PayU. Nunca se suben al repositorio. |

## Cómo levantar el ambiente

1. Instalar **XAMPP** (Apache, PHP 8.1 o superior y MySQL) y **Composer**. Ambos son gratuitos.
2. Clonar el repositorio y cambiar a `develop`.
3. Abrir phpMyAdmin (`http://localhost/phpmyadmin`) y ejecutar `database/01_crear_tablas.sql` y `database/02_datos_iniciales.sql`.
4. Copiar `backend/config/config.example.php` como `backend/config/config.local.php` y poner tu usuario y contraseña de MySQL (este archivo está en `.gitignore`).
5. Backend: en la carpeta `backend`, ejecutar `composer install` y luego `php -S localhost:8000 -t public` → probar `http://localhost:8000/api/estado`.
6. Frontend: abrir `frontend/index.html` en el navegador (o con la extensión Live Server de VS Code). Debe mostrar "Estado de la API: ok".

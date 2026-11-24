# ATHLETIC CORE – Catálogo virtual deportivo

Tienda virtual de nutrición deportiva, indumentaria, equipamiento y deportes de contacto.
Proyecto del módulo **Proyecto – Desarrollo de Software en Equipos (TSPi)**, Politécnico Grancolombiano.
SubGrupo 14 · Tutora: Natalia Martínez · Ciclo 1: 02/11/2026 – 13/12/2026

## Equipo

| Rol TSPi | Integrante | Iniciales |
|---|---|---|
| Team Leader | Daniela Escobar Gutiérrez | DEG |
| Development Manager | Camilo Echavarria Vanegas | CEV |
| Planning Manager | Omar Fonseca Avellaneda | OFA |
| Planning Manager | Jose David Galeano Diaz | JOD |
| Quality/Process Manager | Maria Paula Ducuara Ruiz | MDR |
| Support Manager | Jennifer Díaz García | JDG |

## Arquitectura (3 capas)

| Capa | Tecnología | Carpeta |
|---|---|---|
| Presentación | HTML, CSS y JavaScript (web responsiva, mobile-first) | `frontend/` |
| Lógica de negocio | API REST en PHP: AuthService, CatalogService, CartOrderService, PaymentService | `backend/` |
| Persistencia | Base de datos relacional MySQL: usuarios, categorias, productos, ficha_tecnica, pedidos, detalle_pedido | `database/` |

Tecnologías elegidas por votación del equipo (encuesta del 23/11/2026). Ambiente local gratuito: XAMPP (Apache + PHP + MySQL). Pruebas unitarias con PHPUnit.

Pagos: Mercado Pago / PayU en modo de pruebas (sandbox).

## Cómo ejecutar las pruebas

```bash
./scripts/run-tests.sh        # Linux / Mac / Git Bash
scripts\run-tests.bat         # Windows
```

Las mismas pruebas se ejecutan automáticamente en GitHub (pestaña **Actions**) en cada pull request.

## Reglas de trabajo

Ramas, pull requests y registro TSPi: ver [CONTRIBUTING.md](CONTRIBUTING.md).
Ambiente de pruebas: ver [docs/ambiente-pruebas.md](docs/ambiente-pruebas.md).

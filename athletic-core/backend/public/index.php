<?php
declare(strict_types=1);

// Punto de entrada de la API REST: todas las peticiones a /api/... llegan aquí.
require __DIR__ . '/../vendor/autoload.php';

use AthleticCore\Controllers\EstadoController;

header('Content-Type: application/json; charset=utf-8');
header('Access-Control-Allow-Origin: *');

$metodo = $_SERVER['REQUEST_METHOD'] ?? 'GET';
$ruta = rtrim(parse_url($_SERVER['REQUEST_URI'] ?? '/', PHP_URL_PATH), '/');

$rutas = [
    'GET /api/estado' => [EstadoController::class, 'obtener'],
    // Aquí se agregan las rutas de AuthService, CatalogService, CartOrderService y PaymentService.
];

$clave = $metodo . ' ' . $ruta;
if (!isset($rutas[$clave])) {
    http_response_code(404);
    echo json_encode(['error' => 'Ruta no encontrada']);
    exit;
}

[$clase, $accion] = $rutas[$clave];
echo json_encode((new $clase())->$accion(), JSON_UNESCAPED_UNICODE);

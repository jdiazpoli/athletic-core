<?php
declare(strict_types=1);

namespace AthleticCore\Controllers;

/**
 * Responde si la API está en funcionamiento.
 * GET /api/estado
 */
class EstadoController
{
    public function obtener(): array
    {
        return ['aplicacion' => 'ATHLETIC CORE', 'estado' => 'ok'];
    }
}

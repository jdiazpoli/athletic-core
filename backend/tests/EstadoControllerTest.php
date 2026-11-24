<?php
declare(strict_types=1);

namespace AthleticCore\Tests;

use AthleticCore\Controllers\EstadoController;
use PHPUnit\Framework\TestCase;

class EstadoControllerTest extends TestCase
{
    public function testLaApiRespondeEstadoOk(): void
    {
        $respuesta = (new EstadoController())->obtener();

        $this->assertSame('ok', $respuesta['estado']);
        $this->assertSame('ATHLETIC CORE', $respuesta['aplicacion']);
    }
}

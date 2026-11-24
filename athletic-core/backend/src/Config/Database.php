<?php
declare(strict_types=1);

namespace AthleticCore\Config;

use PDO;

/**
 * Conexión a MySQL con PDO. Los datos de acceso se leen de config/config.local.php,
 * que cada integrante crea a partir de config/config.example.php y que NO se sube a GitHub.
 */
class Database
{
    private static ?PDO $conexion = null;

    public static function conectar(): PDO
    {
        if (self::$conexion === null) {
            $config = require __DIR__ . '/../../config/config.local.php';
            $dsn = sprintf('mysql:host=%s;port=%d;dbname=%s;charset=utf8mb4',
                $config['db_host'], $config['db_port'], $config['db_nombre']);
            self::$conexion = new PDO($dsn, $config['db_usuario'], $config['db_clave'], [
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
            ]);
        }
        return self::$conexion;
    }
}

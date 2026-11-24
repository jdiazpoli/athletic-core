#!/usr/bin/env bash
# Ejecuta las pruebas unitarias del backend (PHPUnit).
set -e
cd "$(dirname "$0")/../backend"
[ -d vendor ] || composer install --no-interaction
vendor/bin/phpunit

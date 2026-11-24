@echo off
REM Ejecuta las pruebas unitarias del backend (PHPUnit).
cd /d "%~dp0..\backend"
if not exist vendor call composer install --no-interaction
call vendor\bin\phpunit

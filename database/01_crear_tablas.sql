-- ATHLETIC CORE · Esquema de base de datos (MySQL)
-- Tablas definidas en la arquitectura lógica de la Entrega 1.

CREATE DATABASE IF NOT EXISTS athletic_core CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE athletic_core;

CREATE TABLE usuarios (
  id_usuario      INT AUTO_INCREMENT PRIMARY KEY,
  nombre          VARCHAR(100) NOT NULL,
  correo          VARCHAR(120) NOT NULL UNIQUE,
  password_hash   VARCHAR(255) NOT NULL,
  rol             ENUM('CLIENTE','ADMIN') NOT NULL DEFAULT 'CLIENTE',
  direccion_envio VARCHAR(200)
);

CREATE TABLE categorias (
  id_categoria INT AUTO_INCREMENT PRIMARY KEY,
  nombre       VARCHAR(60) NOT NULL,
  descripcion  VARCHAR(255)
);

CREATE TABLE productos (
  id_producto  INT AUTO_INCREMENT PRIMARY KEY,
  id_categoria INT NOT NULL,
  nombre       VARCHAR(120) NOT NULL,
  marca        VARCHAR(60),
  precio       DECIMAL(12,2) NOT NULL,
  stock        INT NOT NULL DEFAULT 0,
  estado       ENUM('ACTIVO','INACTIVO') NOT NULL DEFAULT 'ACTIVO',
  imagen_url   VARCHAR(255),
  FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

CREATE TABLE ficha_tecnica (
  id_ficha               INT AUTO_INCREMENT PRIMARY KEY,
  id_producto            INT NOT NULL UNIQUE,
  tabla_nutricional_json JSON,
  talla                  VARCHAR(20),
  peso_kg                DECIMAL(6,2),
  onzas                  DECIMAL(6,2),
  sabor                  VARCHAR(40),
  FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);

CREATE TABLE pedidos (
  id_pedido       INT AUTO_INCREMENT PRIMARY KEY,
  id_usuario      INT NOT NULL,
  fecha           DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  total           DECIMAL(12,2) NOT NULL,
  estado_pedido   ENUM('PENDIENTE','EN_PREPARACION','ENVIADO','ENTREGADO') NOT NULL DEFAULT 'PENDIENTE',
  referencia_pago VARCHAR(100),
  FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);

CREATE TABLE detalle_pedido (
  id_detalle      INT AUTO_INCREMENT PRIMARY KEY,
  id_pedido       INT NOT NULL,
  id_producto     INT NOT NULL,
  cantidad        INT NOT NULL CHECK (cantidad > 0),
  precio_unitario DECIMAL(12,2) NOT NULL,
  FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
  FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);

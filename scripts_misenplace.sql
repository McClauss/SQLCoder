CREATE SCHEMA `misenplace` ;
/*TABLAS*/

CREATE TABLE `persona` (
  `idpersona` varchar(12) NOT NULL,
  `nombres` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `pais_resi` int NOT NULL,
  `region_resi` int NOT NULL,
  `ciudad_resi` int NOT NULL,
  `comuna_resi` int DEFAULT NULL,
  `direccion` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `idvehiculo` varchar(12) DEFAULT NULL,
  `calificacion` decimal(2,2) NOT NULL DEFAULT '0.00',
  `idcategoria` int NOT NULL,
  `estado` varchar(3) NOT NULL DEFAULT 'INA',
  `fecha_naci` datetime NOT NULL,
  PRIMARY KEY (`idpersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabla para almacenar datos basicos de los distintos tipos de usuario';

CREATE TABLE `misenplace`.`vehiculo` (
  `idvehiculo` varchar(12) NOT NULL,
  `tipo_vehiculo` INT NOT NULL,
  `lic_conduccion` VARCHAR(45) NULL,
  `tipo_lic` VARCHAR(45) NULL,
  `estado_lic` VARCHAR(45) NULL,
  PRIMARY KEY (`idvehiculo`))
COMMENT = 'datos tipo vehiculo y licencia';

CREATE TABLE `misenplace`.`tipo_usuario` (
  `idtipo_usuario` INT NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idtipo_usuario`))
COMMENT = 'Tabla con codigos y descripcion de tipos de usuarios';

CREATE TABLE `misenplace`.`pedido` (
  `idpedido` INT NOT NULL AUTO_INCREMENT,
  `fecha_entrega` DATE NOT NULL,
  `estado` VARCHAR(3) NOT NULL DEFAULT 'INA',
  `idfactura` INT NULL,
  `idcomensal` VARCHAR(12) NOT NULL,
  `idchef` VARCHAR(12) NOT NULL,
  `iddeliver` VARCHAR(12) NULL,
  PRIMARY KEY (`idpedido`))
COMMENT = 'Tabla para registrar los pedidos';

CREATE TABLE `misenplace`.`factura` (
  `idfactura` INT NOT NULL AUTO_INCREMENT,
  `valorfactura` INT ZEROFILL NOT NULL,
  `idpedido` INT NOT NULL,
  `idproducto` INT NULL,
  `observacion` VARCHAR(120) NULL,
  `fecha_factura` DATE NULL,
  PRIMARY KEY (`idfactura`))
COMMENT = 'Tabla para registro de facturas';

CREATE TABLE `misenplace`.`producto` (
  `idproducto` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `precio` INT NOT NULL,
  `categoria` INT NOT NULL,
  `cantidad` INT ZEROFILL NOT NULL,
  `fecha_caduca` DATE NULL,
  PRIMARY KEY (`idproducto`))
COMMENT = 'Tabla de registro de productos';


CREATE TABLE `misenplace`.`tipo_producto` (
  `idtipo_producto` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idtipo_producto`))
COMMENT = 'Tabla categorias de productos';




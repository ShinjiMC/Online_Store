CREATE TABLE `usuario` (
  `Id_usuario` int NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `P_apel` varchar(30) DEFAULT NULL,
  `S_apel` varchar(30) DEFAULT NULL,
  `F_nac` date DEFAULT NULL,
  `Telefono` int DEFAULT NULL,
  `Departamento` varchar(30) DEFAULT NULL,
  `Ciudad` varchar(30) DEFAULT NULL,
  `Distrito` varchar(30) DEFAULT NULL,
  `Calle` varchar(30) DEFAULT NULL,
  `Correo` varchar(70) DEFAULT NULL,
  `Contrasena` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Id_usuario`)
);
CREATE TABLE `cliente` (
  `Id_cliente` int NOT NULL,
  `Tarjeta` varchar(30) DEFAULT NULL,
  `Id_usuario` int DEFAULT NULL,
  PRIMARY KEY (`Id_cliente`)
);
CREATE TABLE `vendedor` (
  `Id_vendedor` int NOT NULL,
  `Sueldo` int DEFAULT NULL,
  `Cargo` varchar(30) DEFAULT NULL,
  `Id_usuario` int DEFAULT NULL,
  PRIMARY KEY (`Id_vendedor`)
);
CREATE TABLE `articulo` (
  `Sku` varchar(30) NOT NULL,
  `Precio` decimal(12,2) DEFAULT NULL,
  `Marca` varchar(30) DEFAULT NULL,
  `Nombre` varchar(70) DEFAULT NULL,
  `Color` varchar(30) DEFAULT NULL,
  `Id_vendedor` int DEFAULT NULL,
  `Img` longblob,
  PRIMARY KEY (`Sku`)
);
CREATE TABLE `automotriz` (
  `Sku` varchar(30) NOT NULL,
  `Peso` varchar(30) DEFAULT NULL,
  `Material` varchar(30) DEFAULT NULL,
  `Bateria` varchar(70) DEFAULT NULL,
  `num_llantas` int DEFAULT NULL,
  `Sku_Articulo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Sku`)
);
CREATE TABLE `computo` (
  `Sku` varchar(30) NOT NULL,
  `Rgb` varchar(30) DEFAULT NULL,
  `Conectividad` varchar(30) DEFAULT NULL,
  `Sku_Articulo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Sku`)
);
CREATE TABLE `cuidado_personal` (
  `Sku` varchar(30) NOT NULL,
  `Peso` varchar(30) DEFAULT NULL,
  `Extras` varchar(30) DEFAULT NULL,
  `Material` varchar(30) DEFAULT NULL,
  `Fuente_Alimenta` varchar(30) DEFAULT NULL,
  `Dimension` varchar(30) DEFAULT NULL,
  `Sku_Articulo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Sku`)
);
CREATE TABLE `electro_hogar` (
  `Sku` varchar(30) NOT NULL,
  `Modelo` varchar(70) DEFAULT NULL,
  `Capacidad` varchar(30) DEFAULT NULL,
  `Sku_Articulo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Sku`)
);
CREATE TABLE `fotografia` (
  `Sku` varchar(30) NOT NULL,
  `Megapixeles` varchar(30) DEFAULT NULL,
  `Resolucion` varchar(30) DEFAULT NULL,
  `Procesador` varchar(30) DEFAULT NULL,
  `Tipo` varchar(30) DEFAULT NULL,
  `Sku_Articulo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Sku`)
);
CREATE TABLE `gamer` (
  `Sku` varchar(30) NOT NULL,
  `Modelo` varchar(70) DEFAULT NULL,
  `Almacenamiento` varchar(30) DEFAULT NULL,
  `Sku_Articulo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Sku`)
);
CREATE TABLE `laptop_tablet` (
  `Sku` varchar(30) NOT NULL,
  `Bateria` varchar(30) DEFAULT NULL,
  `Rgb` varchar(30) DEFAULT NULL,
  `Sist_Ope` varchar(30) DEFAULT NULL,
  `Almacenamiento` varchar(30) DEFAULT NULL,
  `Resolucion` varchar(30) DEFAULT NULL,
  `Procesador` varchar(30) DEFAULT NULL,
  `Pantalla` varchar(30) DEFAULT NULL,
  `Tipo` varchar(30) DEFAULT NULL,
  `Sku_Articulo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Sku`)
);
CREATE TABLE `oficina` (
  `Sku` varchar(30) NOT NULL,
  `Material` varchar(30) DEFAULT NULL,
  `Tipo` varchar(30) DEFAULT NULL,
  `Sku_Articulo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Sku`)
);
CREATE TABLE `tienda` (
  `Id_tienda` int NOT NULL,
  `Departamento` varchar(30) DEFAULT NULL,
  `Ciudad` varchar(30) DEFAULT NULL,
  `Distrito` varchar(30) DEFAULT NULL,
  `Calle` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Id_tienda`)
);
CREATE TABLE `tv_video` (
  `Sku` varchar(30) NOT NULL,
  `Resolucion` varchar(30) DEFAULT NULL,
  `Pulgadas` varchar(30) DEFAULT NULL,
  `Tipo` varchar(30) DEFAULT NULL,
  `Sku_Articulo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Sku`)
);
CREATE TABLE `tienda_cliente` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Id_cliente` int DEFAULT NULL,
  `Monto` decimal(12,2) DEFAULT NULL,
  `Id_tienda` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
);
CREATE TABLE `cesta_compras` (
  `Id_cliente_Cliente` int DEFAULT NULL,
  `Id_shop` int NOT NULL AUTO_INCREMENT,
  `Sku` varchar(30) DEFAULT NULL,
  `Cantidad` int DEFAULT NULL,
  PRIMARY KEY (`Id_shop`)
);
CREATE TABLE `oferta` (
  `Id_oferta` varchar(30) NOT NULL,
  `Aprobacion` tinyint(1) DEFAULT NULL,
  `Descuento` decimal(12,2) DEFAULT NULL,
  `Sku_Articulo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Id_oferta`)
);
CREATE TABLE `stock` (
  `Sku` varchar(30) NOT NULL,
  `Cantidad` int DEFAULT NULL,
  `Sku_Articulo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Sku`)
);
ALTER TABLE vendedor ADD FOREIGN KEY (Id_usuario) REFERENCES usuario (Id_usuario);
ALTER TABLE cliente ADD FOREIGN KEY (Id_usuario) REFERENCES usuario (Id_usuario);
ALTER TABLE tienda_cliente ADD FOREIGN KEY (Id_cliente) REFERENCES cliente (Id_cliente);
ALTER TABLE tienda_cliente ADD FOREIGN KEY (Id_tienda) REFERENCES tienda (Id_tienda);
ALTER TABLE cesta_compras ADD FOREIGN KEY (Id_cliente_Cliente) REFERENCES cliente (Id_cliente);
ALTER TABLE cesta_compras ADD FOREIGN KEY (Sku) REFERENCES articulo (Sku);
ALTER TABLE articulo ADD FOREIGN KEY (Id_vendedor) REFERENCES vendedor (Id_vendedor);
ALTER TABLE oferta ADD FOREIGN KEY (Sku_Articulo) REFERENCES articulo (Sku);
ALTER TABLE stock ADD FOREIGN KEY (Sku_Articulo) REFERENCES articulo (Sku);
ALTER TABLE automotriz ADD FOREIGN KEY (Sku_Articulo) REFERENCES articulo (Sku);
ALTER TABLE electro_hogar ADD FOREIGN KEY (Sku_Articulo) REFERENCES articulo (Sku);
ALTER TABLE gamer ADD FOREIGN KEY (Sku_Articulo) REFERENCES articulo (Sku);
ALTER TABLE tv_video ADD FOREIGN KEY (Sku_Articulo) REFERENCES articulo (Sku);
ALTER TABLE oficina ADD FOREIGN KEY (Sku_Articulo) REFERENCES articulo (Sku);
ALTER TABLE fotografia ADD FOREIGN KEY (Sku_Articulo) REFERENCES articulo (Sku);
ALTER TABLE laptop_tablet ADD FOREIGN KEY (Sku_Articulo) REFERENCES articulo (Sku);
ALTER TABLE cuidado_personal ADD FOREIGN KEY (Sku_Articulo) REFERENCES articulo (Sku);
ALTER TABLE computo ADD FOREIGN KEY (Sku_Articulo) REFERENCES articulo (Sku);
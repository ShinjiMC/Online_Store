CREATE DEFINER=`root`@`localhost` PROCEDURE `MostrarAll`()
BEGIN 
	select a.Sku,a.Nombre,a.Marca,a.Color,a.Precio,hallar_oferta2(a.Sku) "Oferta",a.Img
    from articulo a
    order by(a.Sku);
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `Mostrar_Compra`(IN idC int,in costo decimal)
BEGIN 
	select CONCAT("Hinojosa Store ",b.Departamento,", ",b.Ciudad,", ",b.Distrio,", ",b.Calle) "Direccion",a.Monto,a.Id_cliente
    from tienda_cliente a, tienda b
    where idC = a.Id_cliente AND a.Monto = costo;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `MostrarAlloff`(in sku varchar(30))
BEGIN 
	select a.Sku,a.Nombre,a.Marca,a.Color,a.Precio,  hallar_oferta(a.Sku,b.Aprobacion,b.Descuento,a.Precio) "Oferta",a.Img
    from articulo.a,oferta.b
    where a.Sku=b.Sku_Articulo and a.Sku = sku;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `New_Vender`(IN id INT, in n varchar(30), in pa varchar(30), in sa varchar(30), in fnac date, in telf int,
in dep varchar(30), in ciu varchar(30), in dist varchar(30), in cal varchar(30), in mail varchar(30), in pass varchar(30),in money int, in Cargo varchar(30), in idV int)
BEGIN 
	INSERT INTO usuario VALUES (id,n,pa,sa,fnac,telf,dep,ciu,dist,cal,mail,pass);
    INSERT INTO vendedor VALUES (idV, money, Cargo,id);
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `New_tv`(in id varchar(30),in pr decimal,in mar varchar(30),in naames varchar(30), in col varchar(30), in vend int, in image blob, in cant int,
in ida varchar(30),in res varchar(30), in pulg varchar(30),in tip varchar(30))
BEGIN 
	INSERT INTO articulo VALUES (id,pr,mar,naames,col,vend,image);
    INSERT INTO oficina VALUES (ida, res,pulg,tip,id);
    INSERT INTO stock VALUES (ida,cant,id);
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `New_Ofi`(in id varchar(30),in pr decimal,in mar varchar(30),in naames varchar(30), in col varchar(30), in vend int, in image blob, in cant int,
in ida varchar(30),in mat varchar(30), in tip varchar(30))
BEGIN 
	INSERT INTO articulo VALUES (id,pr,mar,naames,col,vend,image);
    INSERT INTO oficina VALUES (ida, mat,tip,id);
    INSERT INTO stock VALUES (ida,cant,id);
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `MostrarProductoEH`()
BEGIN 
	select a.Sku,a.Nombre,a.Marca,a.Color,a.Precio,hallar_oferta2(a.Sku) "Oferta",CONCAT("Modelo: ",b.Modelo," Capacidad: ",b.Capacidad) "Detalles",a.Img
    from articulo a, electro_hogar b
    where b.Sku_Articulo = a.Sku;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `MostrarProductoCP`()
BEGIN 
	select a.Sku,a.Nombre,a.Marca,a.Color,a.Precio,hallar_oferta2(a.Sku) "Oferta",CONCAT("Peso: ",b.Peso," Material: ",b.Material," Fuente_Alimenta: ",b.Fuente_Alimenta," Dimension: ",b.Dimension," Extras: ",b.Extras) "Detalles",a.Img
    from articulo a, cuidado_personal b
    where b.Sku_Articulo = a.Sku;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `MostrarProductoComp`()
BEGIN 
	select a.Sku,a.Nombre,a.Marca,a.Color,a.Precio,hallar_oferta2(a.Sku) "Oferta",CONCAT("RGB: ",b.Rgb," Conectividad: ",b.Conectividad) "Detalles",a.Img
    from articulo a, computo b
    where b.Sku_Articulo = a.Sku;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `MostrarProductoA`()
BEGIN 
	select a.Sku,a.Nombre,a.Marca,a.Color,a.Precio,hallar_oferta2(a.Sku) "Oferta",CONCAT('Peso: ',b.Peso,' Material: ',b.Material,' Bateria: ',b.Bateria,' Nro Llantas: ',b.num_llantas) 'Detalles',a.Img
    from articulo a, automotriz b
    where b.Sku_Articulo = a.Sku;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `MostrarCesta`(IN idC int)
BEGIN 
	select b.Sku,a.Nombre,a.Marca,a.Color,a.Precio,hallar_oferta2(a.Sku) "Oferta",count(b.Sku) "Cantidad",a.Img 
    from articulo a, cesta_compras b
    where idC = b.Id_Cliente_Cliente AND b.Sku = a.Sku
    group by(b.Sku);
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `Showarticle`()
BEGIN 
	declare sku varchar(30);
    select articulo.Sku into sku from articulo;
	call unidi(sku);
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `unidi`(in sku varchar(30))
BEGIN 
	declare offs varchar(30);
    select oferta.Sku_Articulo into offs from oferta;
	if (sku!=offs) then 
		CALL MostrarAll(sku);
	else call MostrarAlloff(sku);
    end if;
END


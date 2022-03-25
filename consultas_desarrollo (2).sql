
INSERT usuarios (usuario,contrasena,nombre,en_sesion,fecha_alta,estado,email) values ('prueba','prueba1','Paez Carlos Ariel',0,now(),1,'prueba@gmail.com'); 
SELECT * FROM usuarios;
INSERT empresas VALUES(3,'El mostacho.','30-2321234687-9','+31213231','Responsable Inscripto','entre rios 597'
,'San Miguel de Tucuman','Tucumán','Concepto de empresa','venta de comida','venta de comida linda','operacion c'
,'operacion v','03/10/2020','3223.-1332','1','1','1','mi casa','27','28',1,now());
INSERT empresas VALUES(4,'Tucuman helado S.R.L','30-78954342-9','+5678','Sociedad de responsabilidad limtiada','las piedras 597'
,'San Miguel de Tucuman','Tucumán','Concepto de empresa','venta de casas','venta de helado rico','operacion c'
,'operacion v','03/10/2020','3223.-1332','1','1','1','chacabuco','27','28',1,now());
INSERT empresas VALUES(5,'Tucuman Casa S.A.','30-21321321-9','+31213231','Responsable Inscripto','Lavalle 597'
,'San Miguel de Tucuman','Tucumán','Concepto de empresa','venta de casas','venta de casas lindas','operacion c'
,'operacion v','03/10/2020','3223.-1332','1','1','1','mi casa','27','28',1,now());
INSERT empresas VALUES(6,'Shitaque S.A.','30-2321321-9','+3212131','Responsable Inscripto','Buenos Aires 231'
,'San Miguel de Tucuman','Tucumán','Concepto de empresa','venta de comida','venta de comida','operacion c'
,'operacion v','03/10/2020','3223.-1332','1','1','1','deposito','27','28',1,now());
INSERT empresas VALUES(7,'Tucuman Alambres S.A.','30-5656578-9','+543814746195','Responsable Inscripto','Buenos Aires 597'
,'San Miguel de Tucuman','Tucumán','Concepto de empresa','venta de alambres','venta de tornillos','operacion c'
,'operacion v','03/10/2020','3223.-1332','1','1','1','mi casa','27','28',1,now());
SELECT * FROM empresas;

INSERT usuario_empresa VALUES (1,'administrador',now(),1,1,3);
INSERT usuario_empresa VALUES (1,'administrador',now(),1,1,4);
INSERT usuario_empresa VALUES (1,'administrador',now(),1,1,5);
INSERT usuario_empresa VALUES (1,'administrador',now(),1,1,6);
INSERT usuario_empresa VALUES (1,'administrador',now(),1,1,7);
SELECT * FROM usuario_empresa;


SELECT * FROM empresas e INNER JOIN usuario_empresa ue ON e.idempresa=ue.empresas_idempresa
INNER JOIN usuarios u ON u.idusuario=ue.usuarios_idusuario WHERE u.idusuario=1;

INSERT periodos VALUES ('1','Marzo','2022',now(),null,1,'Abierto',null,null,null,null,null,7);
SELECT * FROM periodos;

-- Creacion de Proveedor
INSERT personas (idpersona,cuit,nombre,direccion,localidad,codigo_postal,provincia,telefono,cuenta,n_ingr_brutos
,cai,condicion_iva,rubro_actividad,fecha,tipopersona,usuarios_idusuario,activo,cliente_global) VALUES(1,'20-39975838-7','CRISTIAN V','LAS PIEDRAS 123'
,'San Miguel de Tucumán','4000-T1','Tucumán','+543814746464','cuenta contable','12321-wqe','213213tere','Responsable Inscripto'
,'Venta de metales',now(),'Proveedor',1,1,0);
SELECT * FROM personas;

INSERT compras (idcompra,fecha_emision,n_comprobante,codigo_autorizacion_cae,fecha_vencimiento_cae,total
,subtotal1,neto_gravado1,tipo_retencion1,iva1,bandera_iva1,neto_gravado2,subtotal2,iva2,tipo_retencion2
,bandera_iva2,total_retenciones,importe_exento,importe_no_gravado,impuestos_internos,total_parcial_final
,diferencia_con_total,fecha,tipo_de_comprobante,tipo_de_operacion,letra_comprobante,empresas_idempresa
,personas_idpersona) VALUES(1,'07/03/2022','1234-5','213213213_CAE','08/03/2022',12000.00,10000.00,500.00
,'Retencion por exportación',700.43,1,800.76,2354.53,856.87,'Retencion por metal',1,9649.99,677.97,9743.65
,723.94,10500.25,0.00,now(),'comprobante de compra','compra de mercaderia','A',7,1);
SELECT * FROM compras WHERE empresas_idempresa=7;

-- Creacion de Cliente
INSERT personas (idpersona,cuit,nombre,direccion,localidad,codigo_postal,provincia,telefono,cuenta,n_ingr_brutos
,cai,condicion_iva,rubro_actividad,fecha,tipopersona,usuarios_idusuario,activo,cliente_global) VALUES(2,'20-31321321-7','Sara V','LAS PIEDRAS 23'
,'San Miguel de Tucumán','4000-T1','Tucumán','+32312131','cuenta contable de cliente','12321-wqe','213213tere','Responsable Inscripto'
,'Venta de metales',now(),'Cliente',1,1,0);
SELECT * FROM personas;

INSERT ventas (idventa,fecha_emision,tipo_comprobante,tipo_op_venta,producto_servicio_cl,n_comprobante
,letra_comprobante,n_cae,vencimiento_cae,total_venta,tipo_moneda,subtotal1,neto_gravado1,iva1,bandera_iva1
,tipo_de_retencion,producto_servicio1,fecha_de_pago1,subtotal2,neto_gravado2,iva2,bandera_iva2,tipo_retencion2
,producto_servicio2,total_retenciones,importe_exento,importe_no_gravado,impuestos_internos,campo_auxiliar
,diferencia_con_total,fecha,empresas_idempresa,personas_idpersona) 
VALUES(3,'10/03/2022','factura','venta de productos','consumo de productos',100,'A',501,'02/05/2020'
,1700.43,'peso',1000,2354.53,856.87,1,'Retencion por metal','tornillos pulidos','04/08/2020',700.43,677.97,9743.65
,1,'Retencion por metal pulido','TUERCAS PULIDAS',0.00,12.98,34.98,234.7,null,0,now(),7,2);
SELECT * FROM ventas WHERE empresas_idempresa=7;

SELECT DISTINCT p.* FROM ventas v INNER JOIN personas p ON v.personas_idpersona=p.idpersona
WHERE v.empresas_idempresa=7;

SELECT DISTINCT p.* FROM compras c INNER JOIN personas p ON c.personas_idpersona=p.idpersona
WHERE c.empresas_idempresa=7;

-- 7 -- Creacion de STORE PROCEDURE para Login de Usuario

DROP PROCEDURE IF EXISTS login;

DELIMITER //
CREATE PROCEDURE login(pusuario VARCHAR(45), pcontrasena VARCHAR(45))
-- Compra los datos ingresados por el usuario, los valida e inicia la sesión ó reporta el error correspondiente
BEGIN
IF (pusuario IS NULL) OR (pcontrasena IS NULL)  THEN -- Si no hay datos devuelve error
	SIGNAL SQLSTATE '45010' SET MESSAGE_TEXT = 'Error, no se ingresaron datos para login', MYSQL_ERRNO = 45010;
    
ELSEIF EXISTS (SELECT * FROM usuarios WHERE usuario=pusuario AND contrasena=pcontrasena and estado=0) THEN
		SIGNAL SQLSTATE '45011' SET MESSAGE_TEXT = 'Error, el usuario ingresado no se encuentra activo en el sistema.', MYSQL_ERRNO = 45011; -- Si el usuario está dado de baja da error.        
        
ELSEIF EXISTS (SELECT * FROM usuarios WHERE usuario=pusuario AND contrasena=pcontrasena and estado=1 and en_sesion>0) THEN
		SIGNAL SQLSTATE '45012' SET MESSAGE_TEXT = 'Error, el usuario ya está logueado en el sistema.', MYSQL_ERRNO = 45012; -- Si el usuario ya esta logueado da error.        
        
	ELSE
    START TRANSACTION;
	    SELECT * FROM usuarios WHERE usuario=pusuario AND contrasena=pcontrasena and estado=1 and en_sesion=0;
        
       -- UPDATE usuarios SET en_sesion=1 WHERE usuario=pusuario AND contrasena=pcontrasena and estado=1;
		COMMIT;
		
	END IF;

END //
DELIMITER ;

SELECT * FROM usuarios;
-- UPDATE usuarios SET en_sesion=0 WHERE idusuario=1;
SELECT * FROM personas;
SELECT * FROM empresas;

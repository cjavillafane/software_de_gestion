
INSERT usuarios (usuario,contrasena,nombre,en_sesion,fecha_alta,estado,email) values ('pedro','pacheco1','Paez Carlos Ariel',0,now(),1,'prueba@gmail.com'); 
SELECT * FROM usuarios;
INSERT empresas VALUES(3,'El mostacho.','30-2321234687-9','+31213231','Responsable Inscripto','entre rios 597'
,'San Miguel de Tucuman','Tucumán','Concepto de empresa','venta de comida','venta de comida linda','operacion c'
,'operacion v','2022-04-01','3223.-1332','1','1','1','mi casa','27','28',1,now());
INSERT empresas VALUES(4,'Tucuman helado S.R.L','30-78954342-9','+5678','Sociedad de responsabilidad limtiada','las piedras 597'
,'San Miguel de Tucuman','Tucumán','Concepto de empresa','venta de casas','venta de helado rico','operacion c'
,'operacion v','2022-06-01','3223.-1332','1','1','1','chacabuco','27','28',1,now());
INSERT empresas VALUES(5,'Tucuman Casa S.A.','30-21321321-9','+31213231','Responsable Inscripto','Lavalle 597'
,'San Miguel de Tucuman','Tucumán','Concepto de empresa','venta de casas','venta de casas lindas','operacion c'
,'operacion v','2022-07-01','3223.-1332','1','1','1','mi casa','27','28',1,now());
INSERT empresas VALUES(6,'Shitaque S.A.','30-2321321-9','+3212131','Responsable Inscripto','Buenos Aires 231'
,'San Miguel de Tucuman','Tucumán','Concepto de empresa','venta de comida','venta de comida','operacion c'
,'operacion v','2022-10-01','3223.-1332','1','1','1','deposito','27','28',1,now());
INSERT empresas VALUES(7,'Tucuman Alambres S.A.','30-5656578-9','+543814746195','Responsable Inscripto','Buenos Aires 597'
,'San Miguel de Tucuman','Tucumán','Concepto de empresa','venta de alambres','venta de tornillos','operacion c'
,'operacion v','2022-11-01','3223.-1332','1','1','1','mi casa','27','28',1,now());
SELECT * FROM empresas;

INSERT usuario_empresa VALUES (1,'administrador',now(),1,1,3);
INSERT usuario_empresa VALUES (2,'administrador',now(),1,1,4);
INSERT usuario_empresa VALUES (3,'administrador',now(),1,1,5);
INSERT usuario_empresa VALUES (4,'administrador',now(),1,1,6);
INSERT usuario_empresa VALUES (5,'administrador',now(),1,1,7);
SELECT * FROM usuario_empresa;


SELECT * FROM empresas e INNER JOIN usuario_empresa ue ON e.idempresa=ue.empresas_idempresa
INNER JOIN usuarios u ON u.idusuario=ue.usuarios_idusuario WHERE u.idusuario=1;

INSERT periodos VALUES ('1','Enero','2022','2022-01-01',null,1,'Abierto',null,null,null,null,null,7);
INSERT periodos VALUES ('2','Febrero','2022','2022-01-01',null,1,'Abierto',null,null,null,null,null,7);
INSERT periodos VALUES ('3','Marzo','2022','2022-01-01',null,1,'Abierto',null,null,null,null,null,7);
INSERT periodos VALUES ('4','Abril','2022','2022-01-01',null,1,'Abierto',null,null,null,null,null,7);
INSERT periodos VALUES ('5','Mayo','2022','2022-01-01',null,1,'Abierto',null,null,null,null,null,7);
INSERT periodos VALUES ('6','Junio','2022','2022-01-01',null,1,'Abierto',null,null,null,null,null,7);
INSERT periodos VALUES ('7','Julio','2022','2022-01-01',null,1,'Abierto',null,null,null,null,null,7);
INSERT periodos VALUES ('8','Agosto','2022','2022-01-01',null,1,'Abierto',null,null,null,null,null,7);
INSERT periodos VALUES ('9','Septiembre','2022','2022/01/02',null,1,'Abierto',null,null,null,null,null,7);
INSERT periodos VALUES ('10','Octubre','2022','2022/10/01',null,1,'Abierto',null,null,null,null,null,7);
INSERT periodos VALUES ('11','Noviembre','2022','2022/11/05',null,1,'Abierto',null,null,null,null,null,7);
INSERT periodos VALUES ('12','Diciembre','2022','2022/12/02',null,1,'Abierto',null,null,null,null,null,7);
INSERT periodos VALUES ('13','Enero','2023','2022/01/06',null,1,'Abierto',null,null,null,null,null,3);
INSERT periodos VALUES ('14','Febrero','2023','2022/02/02',null,1,'Abierto',null,null,null,null,null,3);
INSERT periodos VALUES ('15 ','Marzo','2023','2022/03/05',null,1,'Abierto',null,null,null,null,null,3);
SELECT * FROM periodos;

-- Creacion de Proveedor
INSERT personas (idpersona,cuit,nombre,direccion,localidad,codigo_postal,provincia,telefono,cuenta,n_ingr_brutos
,cai,condicion_iva,rubro_actividad,fecha,tipopersona,empresas_idempresa,usuarios_idusuario,activo,cliente_global) VALUES(1,'20-39975838-7','CRISTIAN V','LAS PIEDRAS 123'
,'San Miguel de Tucumán','4000-T1','Tucumán','+543814746464','cuenta contable','12321-wqe','213213tere','Responsable Inscripto'
,'Venta de metales',now(),'Proveedor',7,1,1,0);
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
,cai,condicion_iva,rubro_actividad,fecha,tipopersona,empresas_idempresa,usuarios_idusuario,activo,cliente_global) VALUES(2,'20-31321321-7','Sara V','LAS PIEDRAS 23'
,'San Miguel de Tucumán','4000-T1','Tucumán','+32312131','cuenta contable de cliente','12321-wqe','213213tere','Responsable Inscripto'
,'Venta de metales',now(),'Cliente',7,1,1,0);
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

-- 1 -- Creacion de STORE PROCEDURE para Login de Usuario

DROP PROCEDURE IF EXISTS login;

DELIMITER //
CREATE PROCEDURE login(pusuario VARCHAR(45), pcontrasena VARCHAR(45))
-- Compara los datos ingresados por el usuario, los valida e inicia la sesión ó reporta el error correspondiente
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

-- 2 -- Creacion de STORE PROCEDURE para activar una  Empresa

DROP PROCEDURE IF EXISTS activar_empresa;

DELIMITER //
CREATE PROCEDURE activar_empresa(pidusuario INT, pidempresa INT)
-- Compara los datos ingresados por el usuario, los valida e inicia la sesión ó reporta el error correspondiente
BEGIN
IF (pidusuario IS NULL) OR (pidempresa IS NULL)  THEN -- Si no hay datos devuelve error
	SIGNAL SQLSTATE '45013' SET MESSAGE_TEXT = 'Error, no se ingresaron datos para activar una empresa.', MYSQL_ERRNO = 45013;
    
ELSEIF EXISTS (SELECT * FROM usuarios WHERE idusuario=pidusuario AND estado=0) THEN
		SIGNAL SQLSTATE '45014' SET MESSAGE_TEXT = 'Error, el usuario ingresado no se encuentra activo en el sistema.', MYSQL_ERRNO = 45014; -- Si el usuario está dado de baja da error.        
        
ELSEIF EXISTS (SELECT * FROM empresas WHERE idempresa=pidempresa AND activa=0) THEN
		SIGNAL SQLSTATE '45015' SET MESSAGE_TEXT = 'Error, la empresa ingresada no se encuentra activa.', MYSQL_ERRNO = 45015; -- Si el usuario ya esta logueado da error.        

ELSEIF NOT EXISTS (SELECT * FROM usuario_empresa WHERE empresas_idempresa=pidempresa AND usuarios_idusuario=pidusuario) THEN
		SIGNAL SQLSTATE '45016' SET MESSAGE_TEXT = 'Error, el usuario ingresado no esta relacionado a la empresa.', MYSQL_ERRNO = 45016; -- Si el usuario ya esta logueado da error.        
           
	ELSE
    START TRANSACTION;
	    SELECT nombre,cuit FROM empresas WHERE idempresa=pidempresa;
        
		COMMIT;
		
	END IF;

END //
DELIMITER ;

-- 3 -- Creacion de STORE PROCEDURE para activar un Periodo

DROP PROCEDURE IF EXISTS activar_periodo;

DELIMITER //
CREATE PROCEDURE activar_periodo(pidusuario INT, pidempresa INT,pidperiodo INT)
-- Compara los datos ingresados por el usuario, los valida e inicia la sesión ó reporta el error correspondiente
BEGIN
IF (pidusuario IS NULL) OR (pidempresa IS NULL) OR (pidperiodo IS NULL)  THEN -- Si no hay datos devuelve error
	SIGNAL SQLSTATE '45017' SET MESSAGE_TEXT = 'Error, no se ingresaron datos para activar un periodo.', MYSQL_ERRNO = 45017;
    
ELSEIF EXISTS (SELECT * FROM usuarios WHERE idusuario=pidusuario AND estado=0) THEN
		SIGNAL SQLSTATE '45018' SET MESSAGE_TEXT = 'Error, el usuario ingresado no se encuentra activo en el sistema.', MYSQL_ERRNO = 45018; -- Si el usuario está dado de baja da error.        
        
ELSEIF EXISTS (SELECT * FROM empresas WHERE idempresa=pidempresa AND activa=0) THEN
		SIGNAL SQLSTATE '45019' SET MESSAGE_TEXT = 'Error, la empresa ingresada no se encuentra activa.', MYSQL_ERRNO = 45019; -- Si el usuario ya esta logueado da error.        

ELSEIF NOT EXISTS (SELECT * FROM usuario_empresa WHERE empresas_idempresa=pidempresa AND usuarios_idusuario=pidusuario) THEN
		SIGNAL SQLSTATE '45020' SET MESSAGE_TEXT = 'Error, el usuario ingresado no esta relacionado a la empresa.', MYSQL_ERRNO = 45020; -- Si el usuario ya esta logueado da error.        

ELSEIF EXISTS (SELECT * FROM periodos WHERE idperiodo=pidperiodo AND activo=0) THEN
		SIGNAL SQLSTATE '45021' SET MESSAGE_TEXT = 'Error, el periodo ingresado no se encuentra activo en el sistema', MYSQL_ERRNO = 45021; -- Si el usuario ya esta logueado da error.        
                
	ELSE
    START TRANSACTION;
	    SELECT nombre FROM periodos WHERE idperiodo=pidperiodo;
        
		COMMIT;
		
	END IF;

END //
DELIMITER ;

-- 4 -- Creacion de STORE PROCEDURE para crear una  Empresa

DROP PROCEDURE IF EXISTS crear_empresa;

DELIMITER //
CREATE PROCEDURE crear_empresa(pidusuario INT,pnombre varchar(100),pcuit varchar(30),ptelefono varchar(45),pcondicion_iva varchar(45),
pdomicilio varchar(100),plocalidad varchar(45),pprovincia varchar(45),pconcepto varchar(45),pactividad_principal varchar(70),
pactividad_secundaria varchar(70),poper_compras varchar(100),poper_ventas varchar(100),pinicio_actividad varchar(45),pingresos_brutos varchar(45),
pestablecimiento_n int,pn_libro_compras varchar(45),pn_libro_ventas varchar(45),psede_timbrado varchar(45),phoja_libro_compras varchar(45),
phoja_libro_ventas varchar(45))
-- Verifica los datos ingresados por el usuario, crea la empresa indicada e inserta la relacion con el usuario

BEGIN
IF (pidusuario IS NULL) OR (pnombre IS NULL) OR (pcuit IS NULL) OR (pcondicion_iva IS NULL) OR (pdomicilio IS NULL)
 OR (pprovincia IS NULL) OR (pconcepto IS NULL) OR (pactividad_principal IS NULL) OR (pactividad_principal IS NULL)
 OR (poper_compras IS NULL) OR (poper_ventas IS NULL)  THEN -- Si no hay datos devuelve error
	SIGNAL SQLSTATE '45022' SET MESSAGE_TEXT = 'Error, no se ingresaron datos para crear una empresa.', MYSQL_ERRNO = 45022;
    
ELSEIF EXISTS (SELECT idempresa FROM empresas WHERE cuit=pcuit) THEN
		SIGNAL SQLSTATE '45023' SET MESSAGE_TEXT = 'Error, ya existe una empresa con el cuit ingresado.', MYSQL_ERRNO = 45023; -- Si el usuario está dado de baja da error.        
        
ELSEIF EXISTS (SELECT idempresa FROM empresas WHERE cuit=pcuit) THEN
		SIGNAL SQLSTATE '45023' SET MESSAGE_TEXT = 'Error, ya existe una empresa con el cuit ingresado.', MYSQL_ERRNO = 45023; -- Si el usuario está dado de baja da error.        
					
	ELSE
    START TRANSACTION;
	    INSERT empresas (nombre,cuit,telefono,condicion_iva,domicilio,localidad,provincia,concepto,actividad_principal,actividad_secundaria,
        oper_compras,oper_ventas,inicio_actividad,ingresos_brutos,establecimiento_n,n_libro_compras,n_libro_ventas,sede_timbrado,hoja_libro_compras,
        hoja_libro_ventas,activa,fecha_alta) VALUES (pnombre,pcuit,ptelefono,pcondicion_iva,pdomicilio,plocalidad,pprovincia,pconcepto,pactividad_principal,
        pactividad_secundaria,poper_compras,poper_ventas,pinicio_actividad,pingresos_brutos,pestablecimiento_n,pn_libro_compras,pn_libro_ventas,
        psede_timbrado,phoja_libro_compras,phoja_libro_ventas,1,now());
        
        INSERT usuario_empresa (tipo_usuario,fecha,nivel_permisos,usuarios_idusuario,empresas_idempresa) 
			VALUES ('CREADOR',now(),2,pidusuario,(SELECT idempresa FROM empresas WHERE cuit=pcuit order by idempresa desc LIMIT 1)); 
            
		COMMIT;
		
	END IF;

END //
DELIMITER ;

SELECT * FROM usuario_empresa;
INSERT clave_token VALUES (1,'monitorfsdfdsfs12312X','kjdshfdksQescritorio');

SELECT * FROM usuarios;
-- UPDATE usuarios SET en_sesion=0 WHERE idusuario=1;
SELECT * FROM personas;
SELECT * FROM empresas;


SELECT e.* FROM empresas e INNER JOIN usuario_empresa ue ON e.idempresa=ue.empresas_idempresa
INNER JOIN usuarios u ON u.idusuario=ue.usuarios_idusuario 
WHERE u.idusuario=1 AND u.estado=1 AND e.activa=1;

SELECT e.* FROM empresas e INNER JOIN usuario_empresa ue ON e.idempresa=ue.empresas_idempresa
 INNER JOIN usuarios u ON u.idusuario=ue.usuarios_idusuario WHERE u.idusuario='1';

select * from personas;

SELECT DISTINCT p.* FROM ventas v INNER JOIN personas p ON 
 v.personas_idpersona=p.idpersona WHERE v.empresas_idempresa=7;
 
 SELECT * FROM personas WHERE tipopersona="Cliente" AND empresas_idempresa=7 AND activo=1;
 
 SELECT concat(day(fecha_inicio),'/',month(fecha_inicio),'/',year(fecha_inicio)) as fecha_inicio,
 concat(day(fecha_fin),'/',month(fecha_fin),'/',year(fecha_fin)) as fecha_fin
 FROM periodos;

select * from periodos;

INSERT contabilidad VALUES (1,'{ "ACTIVO": {
                    "ACTIVO_CORRIENTE": {
                        "CAJA_Y_BANCOS": {
                            "CAJA_CHICA":0,
                            "BANCO_NACIONAL_CUENTA_CORRIENTE":0
                            }
                        ,
                        "CREDITOS_CORRIENTES": {
                            "CUENTAS_POR_COBRAR_CLIENTES":0,
                            "CUENTAS_POR_COBRAR_SOCIOS":0,
                            "DOCUMENTOS_POR_COBRAR":0
                            }
                        ,
                        "OTROS_CREDITOS": {
                            "IMPUESTO_DE_VENTAS_COMPRAS":0
                            }
                        ,
                        "ACTIVOS_REALIZABLES":
                            {"MERCADERIAS":0
                            }         
                    },
                    "ACTIVO_NO_CORRIENTE":{
                        "BIENES_DE_USO":{
                            "INMUEBLES":0,
                            "RODADOS":0,
                            "MUEBLES_Y_EQUIPO_DE_OFICINA":0
                        },
                        "CREDITOS_NO_CORRIENTES":{
                            "DOCUMENTOS_POR_COBRAR":0
                        },
                        "INVERSIONES":{
                            "ACCIONES_DE_OTRA_COMPAÑIA":0
                        }   
                    }
                    },
                "PASIVO": {
                    "PASIVO_CORRIENTE":{
                        "PROVEEDORES":{
                            "PROVEEDORES":0,
                            "DOCUMENTOS_POR_PAGAR":0
                        },
                        "HONORARIOS":{
                            "HONORARIOS_POR_PAGAR":0 
                        },
                        "SUELDOS_POR_PAGAR":{
                            "SUELDOS_POR_PAGAR":0
                        },
                        "OTROS_PASIVOS":{
                            "IMPUESTO_DE_VENTAS":0
                        }
                    },
                    "PASIVO_NO_CORRIEENTE":0
                },
                "PATRIMONIO_NETO":{
                    "CAPITAL":0,
                    "RESERVAS":{
                        "RESERVA_LEGAL":0
                    },
                    "UTILIZADES_NO_DISTRIBUIDAS":0,
                    "RESULTADO_DEL_EJERCICIO":0
                },
                "INGRESOS":{
                    "INGRESOS_POR_VENTAS":{
                        "VENTA_DE_MERCADERIA":0,
                        "VENTA_DE_SERVICIO":0
                    },
                    "OTROS_INGRESOS":{
                        "INTERESES_POR_MORA":0,
                        "DESCUENTOS_OBTENIDOS":0
                    }
                },
                "EGRESOS":{
                    "GASTOS_DE_COMERCIALIZACION":{
                        "COSTO_DE_MERCADERIA":0,
                        "DESCUENTOS_OTORGADOS":0
                    },
                    "GASTOS_DE_ADMINISTRACION":{
                        "ALQUILERES":0,
                        "SUELDOS_Y_JORNALES":0,
                        "HONORARIOS_PROFESIONALES":0,
                        "ELECTRICIDAD":0,
                        "TELEFONOS":0
                    }
                }
               
          
                }',7);
                
INSERT contabilidad VALUES (2,'{ "ACTIVO": {
                    "ACTIVO_CORRIENTE": {
                        "CAJA_Y_BANCOS": {
                            "CAJA_CHICA":0,
                            "BANCO_NACIONAL_CUENTA_CORRIENTE":0
                            }
                        ,
                        "CREDITOS_CORRIENTES": {
                            "CUENTAS_POR_COBRAR_CLIENTES":0,
                            "CUENTAS_POR_COBRAR_SOCIOS":0,
                            "DOCUMENTOS_POR_COBRAR":0
                            }
                        ,
                        "OTROS_CREDITOS": {
                            "IMPUESTO_DE_VENTAS_COMPRAS":0
                            }
                        ,
                        "ACTIVOS_REALIZABLES":
                            {"MERCADERIAS":20
                            }         
                    },
                    "ACTIVO_NO_CORRIENTE":{
                        "BIENES_DE_USO":{
                            "INMUEBLES":0,
                            "RODADOS":0,
                            "MUEBLES_Y_EQUIPO_DE_OFICINA":0
                        },
                        "CREDITOS_NO_CORRIENTES":{
                            "DOCUMENTOS_POR_COBRAR":0
                        },
                        "INVERSIONES":{
                            "ACCIONES_DE_OTRA_COMPAÑIA":0
                        }   
                    }
                    },
                "PASIVO": {
                    "PASIVO_CORRIENTE":{
                        "PROVEEDORES":{
                            "PROVEEDORES":0,
                            "DOCUMENTOS_POR_PAGAR":0
                        },
                        "HONORARIOS":{
                            "HONORARIOS_POR_PAGAR":0 
                        },
                        "SUELDOS_POR_PAGAR":{
                            "SUELDOS_POR_PAGAR":0
                        },
                        "OTROS_PASIVOS":{
                            "IMPUESTO_DE_VENTAS":0
                        }
                    },
                    "PASIVO_NO_CORRIEENTE":0
                },
                "PATRIMONIO_NETO":{
                    "CAPITAL":0,
                    "RESERVAS":{
                        "RESERVA_LEGAL":0
                    },
                    "UTILIZADES_NO_DISTRIBUIDAS":0,
                    "RESULTADO_DEL_EJERCICIO":0
                },
                "INGRESOS":{
                    "INGRESOS_POR_VENTAS":{
                        "VENTA_DE_MERCADERIA":0,
                        "VENTA_DE_SERVICIO":0
                    },
                    "OTROS_INGRESOS":{
                        "INTERESES_POR_MORA":0,
                        "DESCUENTOS_OBTENIDOS":0
                    }
                },
                "EGRESOS":{
                    "GASTOS_DE_COMERCIALIZACION":{
                        "COSTO_DE_MERCADERIA":0,
                        "DESCUENTOS_OTORGADOS":0
                    },
                    "GASTOS_DE_ADMINISTRACION":{
                        "ALQUILERES":0,
                        "SUELDOS_Y_JORNALES":0,
                        "HONORARIOS_PROFESIONALES":0,
                        "ELECTRICIDAD":0,
                        "TELEFONOS":0
                    }
                }
               
          
                }',7);                
-- SET binlog_row_value_options = PARTIAL_JSON, binlog_row_image = MINIMAL;
UPDATE contabilidad 
SET plan_de_cuentas = JSON_SET(plan_de_cuentas,'$.ACTIVO.ACTIVO_NO_CORRIENTE.BIENES_DE_USO.INMUEBLES',10.50)
WHERE idcontabilidad=1;
 
SELECT JSON_EXTRACT(plan_de_cuentas, '$.ACTIVO.ACTIVO_NO_CORRIENTE.BIENES_DE_USO.INMUEBLES') AS 'Inmuebles' 
FROM contabilidad;


select * from periodos where activo=1;

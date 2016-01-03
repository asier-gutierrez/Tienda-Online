/*FICHERO PARA LA CARGA DE DATOS DE PRUEBA DE LA BASE DE DATOS*/
/*CIUDAD*/
INSERT INTO CIUDAD VALUES (1,'MADRID');
INSERT INTO CIUDAD VALUES (2,'BARCELONA');
INSERT INTO CIUDAD VALUES(3,'BILBAO');
INSERT INTO CIUDAD VALUES(4,'SEVILLA');
INSERT INTO CIUDAD VALUES(5, 'ZARAGOZA');
INSERT INTO CIUDAD VALUES(6, 'VALENCIA');
INSERT INTO CIUDAD VALUES(7, 'BURGOS');
INSERT INTO CIUDAD VALUES(8, 'OVIEDO');
INSERT INTO CIUDAD VALUES(9, 'LA RIOJA');
INSERT INTO CIUDAD VALUES(10, 'ASTURIAS');
INSERT INTO CIUDAD VALUES(11, 'SANTANDER');
INSERT INTO CIUDAD VALUES(12, 'ANDALUCIA');


/*USUARIO*/
INSERT INTO USUARIO VALUES ('78912345A','MARTA','ANGUIANO','MA@OPENDEUSTO.ES','1111A','28-12-1995');
INSERT INTO USUARIO VALUES ('45615975B','YASMIN','MARTIN','YM@OPENDEUSTO.ES','2222B','24-04-1995');
INSERT INTO USUARIO VALUES ('45876562C','ASIER','GUTIERREZ','AG@OPENDEUSTO.ES','3333C','08-02-1995');
INSERT INTO USUARIO VALUES ('78945623D','IVAN','FERNANDEZ','IM@OPENDEUSTO.ES','4444D','18-05-1995');
INSERT INTO USUARIO VALUES ('56390874E','CARLOS','LANDA','CL@OPENDEUSTO.ES','5555E','10-09-1995');
INSERT INTO USUARIO VALUES ('74185296F','LAURA','RODRIGUEZ','LR@OPENDEUSTO.ES','6666F','22-11-1990');
INSERT INTO USUARIO VALUES ('96385274G','PEDRO','ZAPATERO','PZ@OPENDEUSTO.ES','7777G','12-03-1994');
INSERT INTO USUARIO VALUES ('85296374H','ROBERTO','MENDEZ','RM@OPENDEUSTO.ES','8888H','17-10-1996');
INSERT INTO USUARIO VALUES ('14725836I','AMAIA','NUÑEZ','AN@OPENDEUSTO.ES','9999I','26-08-1989');
INSERT INTO USUARIO VALUES ('36925814J','ANDREA','POZUELO','AP@OPENDEUSTO.ES','1000J','21-07-1988');
INSERT INTO USUARIO VALUES ('78945632K','MARIA','LOPEZ','ML@OPENDEUSTO.ES','1001K','11-06-1993');
INSERT INTO USUARIO VALUES ('32165478L','JOSE','ESCUDERO','JE@OPENDEUSTO.ES','1002L','02-02-1997');


/*TIPO_DATO_BANCARIO*/
INSERT INTO TIPO_DATO_BANCARIO VALUES(1,'CUENTA CORRIENTE');
INSERT INTO TIPO_DATO_BANCARIO VALUES(2,'PAYPAL');
INSERT INTO TIPO_DATO_BANCARIO VALUES(3,'TARJETA DE CREDITO');
INSERT INTO TIPO_DATO_BANCARIO VALUES(4,'TARJETA DE DEBITO');
INSERT INTO TIPO_DATO_BANCARIO VALUES(5,'MASTERCARD');
INSERT INTO TIPO_DATO_BANCARIO VALUES(6,'VISA');
INSERT INTO TIPO_DATO_BANCARIO VALUES(7,'PAYSAFECARD');
INSERT INTO TIPO_DATO_BANCARIO VALUES(8,'CUENTA PREPAGO');
INSERT INTO TIPO_DATO_BANCARIO VALUES(9,'CUENTA NOMINA');
INSERT INTO TIPO_DATO_BANCARIO VALUES(10,'TARJETA PREPAGO');
INSERT INTO TIPO_DATO_BANCARIO VALUES(11,'TARJETA SIM');
INSERT INTO TIPO_DATO_BANCARIO VALUES(12,'TARJETA REVOLVING');

/*DATO_BANCARIO*/
INSERT INTO DATO_BANCARIO VALUES('1A1B',111,1,'78912345A');
INSERT INTO DATO_BANCARIO VALUES('2C2D',222,2,'45615975B');
INSERT INTO DATO_BANCARIO VALUES('3E4F',333,3,'45876562C');
INSERT INTO DATO_BANCARIO VALUES('5G6H',444,4,'78945623D');
INSERT INTO DATO_BANCARIO VALUES('7I8J',555,5,'56390874E');
INSERT INTO DATO_BANCARIO VALUES('9A9A',666,6,'74185296F');
INSERT INTO DATO_BANCARIO VALUES('8B8B',777,7,'96385274G');
INSERT INTO DATO_BANCARIO VALUES('7C7C',888,8,'85296374H');
INSERT INTO DATO_BANCARIO VALUES('6D6D',999,9,'14725836I');
INSERT INTO DATO_BANCARIO VALUES('5E5E',101,10,'36925814J');
INSERT INTO DATO_BANCARIO VALUES('4F4F',102,11,'78945632K');
INSERT INTO DATO_BANCARIO VALUES('3G3G',103,12,'32165478L');

/*PUESTO*/
INSERT INTO PUESTO VALUES(1111,'TECNICO');
INSERT INTO PUESTO VALUES(2222,'ENCARGADO');
INSERT INTO PUESTO VALUES(3333,'JEFE');
INSERT INTO PUESTO VALUES(4444,'EMPLEADO');
INSERT INTO PUESTO VALUES(5555,'BECARIO');
INSERT INTO PUESTO VALUES(6666,'DIRECTOR');
INSERT INTO PUESTO VALUES(7777,'INTERNO');
INSERT INTO PUESTO VALUES(8888,'GERENTE');
INSERT INTO PUESTO VALUES(9999,'SECRETARIA');
INSERT INTO PUESTO VALUES(1000,'ADMINISTRADORA');
INSERT INTO PUESTO VALUES(1001,'ASISTENTE');
INSERT INTO PUESTO VALUES(1002,'SUPERVISOR');

/*ESTADO_PEDIDO*/
INSERT INTO ESTADO_PEDIDO VALUES(11,'ENVIADO');
INSERT INTO ESTADO_PEDIDO VALUES(22,'DEVUELTO');
INSERT INTO ESTADO_PEDIDO VALUES(33,'EN TRAMITE');
INSERT INTO ESTADO_PEDIDO VALUES(44,'RETRASADO');
INSERT INTO ESTADO_PEDIDO VALUES(55,'ENTREGADO');

/*CODIGO_POSTAL*/
INSERT INTO CODIGO_POSTAL VALUES(1,1);
INSERT INTO CODIGO_POSTAL VALUES(2,2);
INSERT INTO CODIGO_POSTAL VALUES(3,3);
INSERT INTO CODIGO_POSTAL VALUES(4,4);
INSERT INTO CODIGO_POSTAL VALUES(5,5);
INSERT INTO CODIGO_POSTAL VALUES(6,6);
INSERT INTO CODIGO_POSTAL VALUES(7,7);
INSERT INTO CODIGO_POSTAL VALUES(8,8);
INSERT INTO CODIGO_POSTAL VALUES(9,9);
INSERT INTO CODIGO_POSTAL VALUES(10,10);
INSERT INTO CODIGO_POSTAL VALUES(11,11);
INSERT INTO CODIGO_POSTAL VALUES(12,12);

/*DIRECCION*/
INSERT INTO DIRECCION VALUES(1,'1A',1,1);
INSERT INTO DIRECCION VALUES(2,'2B',2,2);
INSERT INTO DIRECCION VALUES(3,'3C',3,3);
INSERT INTO DIRECCION VALUES(4,'4D',4,4);
INSERT INTO DIRECCION VALUES(5,'5C',5,5);
INSERT INTO DIRECCION VALUES(6,'6F',6,6);
INSERT INTO DIRECCION VALUES(7,'7G',7,7);
INSERT INTO DIRECCION VALUES(8,'8H',8,8);
INSERT INTO DIRECCION VALUES(9,'9I',9,9);
INSERT INTO DIRECCION VALUES(10,'10J',10,10);
INSERT INTO DIRECCION VALUES(11,'11K',11,11);
INSERT INTO DIRECCION VALUES(12,'12L',12,12);

/*MODELO (depende del producto)*/
INSERT INTO MODELO VALUES (1,'PLATA');
INSERT INTO MODELO VALUES (2,'NEGRO');
INSERT INTO MODELO VALUES (3,'GRANDE');
INSERT INTO MODELO VALUES (4,'PEQUEÑO');
INSERT INTO MODELO VALUES (5,'ORO');
INSERT INTO MODELO VALUES (6,'PLUS');
INSERT INTO MODELO VALUES (7,'MINI');
INSERT INTO MODELO VALUES (8,'TALLA M');
INSERT INTO MODELO VALUES (9,'TALLA L');
INSERT INTO MODELO VALUES (10,'MORADO');
INSERT INTO MODELO VALUES (11,'AZUL');
INSERT INTO MODELO VALUES (12,'ROJO');

/*CENTRO_DE_OPERACIONES*/
INSERT INTO CENTRO_DE_OPERACIONES VALUES(1,'VILLA OLA');
INSERT INTO CENTRO_DE_OPERACIONES VALUES(2,'LOLITAS');
INSERT INTO CENTRO_DE_OPERACIONES VALUES(3,'PEPE');
INSERT INTO CENTRO_DE_OPERACIONES VALUES(4,'FELICIANO');
INSERT INTO CENTRO_DE_OPERACIONES VALUES(5,'PEPO');
INSERT INTO CENTRO_DE_OPERACIONES VALUES(6,'SALAMANCA');
INSERT INTO CENTRO_DE_OPERACIONES VALUES(7,'GUILLE');
INSERT INTO CENTRO_DE_OPERACIONES VALUES(8,'MENENDEZ');
INSERT INTO CENTRO_DE_OPERACIONES VALUES(9,'CENTRO MADRID');
INSERT INTO CENTRO_DE_OPERACIONES VALUES(10,'C.BARCELONA');
INSERT INTO CENTRO_DE_OPERACIONES VALUES(11,'C.ANDALUCIA');
INSERT INTO CENTRO_DE_OPERACIONES VALUES(12,'C.VIZCAYA');

/*ALMACEN*/
INSERT INTO ALMACEN VALUES(1,'PEYO',1);
INSERT INTO ALMACEN VALUES(2,'ATUN',2);
INSERT INTO ALMACEN VALUES(3,'TECHNO',3);
INSERT INTO ALMACEN VALUES(4,'INFOR',4);
INSERT INTO ALMACEN VALUES(5,'PRENDAS',5);
INSERT INTO ALMACEN VALUES(6,'MATPRIMA',6);
INSERT INTO ALMACEN VALUES(7,'PRODUCTOENCURSO',7);
INSERT INTO ALMACEN VALUES(8,'PRODUCTOTERMINADO',8);
INSERT INTO ALMACEN VALUES(9,'REPUESTOS',9);
INSERT INTO ALMACEN VALUES(10,'MATAUXILIARES',10);
INSERT INTO ALMACEN VALUES(11,'MATENDEPOSITO',11);
INSERT INTO ALMACEN VALUES(12,'MATOFICINA',12);

/*OFICINA*/
INSERT INTO OFICINA VALUES(1,'OFICINA1',1);
INSERT INTO OFICINA VALUES(2,'OFICINA2',2);
INSERT INTO OFICINA VALUES(3,'OFICINA3',3);
INSERT INTO OFICINA VALUES(4,'OFICINA4',4);
INSERT INTO OFICINA VALUES(5,'OFICINA5',5);
INSERT INTO OFICINA VALUES(6,'OFICINA6',6);
INSERT INTO OFICINA VALUES(7,'OFICINA7',7);
INSERT INTO OFICINA VALUES(8,'OFICINA8',8);
INSERT INTO OFICINA VALUES(9,'OFICINA9',9);
INSERT INTO OFICINA VALUES(10,'OFICINA10',10);
INSERT INTO OFICINA VALUES(11,'OFICINA11',11);
INSERT INTO OFICINA VALUES(12,'OFICINA12',12);

/*EMPLEADO*/
INSERT INTO EMPLEADO VALUES ('98765432C','PEDRO',1000,'EGUNON','02-02-1992','PE@OPENDEUSTO.ES',67891,1111,2,1,3,'98765432C');
INSERT INTO EMPLEADO VALUES ('22558975C','SILVIA',2000,'ORTIZ','10-03-1991','SO@OPENDEUSTO.ES',23456,2222,1,3,3,'22558975C');
INSERT INTO EMPLEADO VALUES ('12345678A','JUAN',1000,'GARAY','01-01-1990','JG@OPENDEUSTO.ES',12345,1111,2,2,3,'98765432C');
INSERT INTO EMPLEADO VALUES ('78912345J','ELENA',1000,'JIMENEZ','07-04-1989','EJ@OPENDEUSTO.ES',78912,3333,4,4,3,'22558975C');
INSERT INTO EMPLEADO VALUES ('74185296A','JONAN',1500,'OPORTO','25-05-1992','JO@OPENDEUSTO.ES',34567,4444,5,5,3,'98765432C');
INSERT INTO EMPLEADO VALUES ('96385274M','ANE',1500,'MONSERRAT','25-09-1991','AM@OPENDEUSTO.ES',23896,5555,5,4,3,'12345678A');
INSERT INTO EMPLEADO VALUES ('78945615I','KEVIN',2000,'AMIANO','08-12-1995','KA@OPENDEUSTO.ES',89343,6666,5,1,3,'12345678A');
INSERT INTO EMPLEADO VALUES ('65412398E','CARLOS',1700,'CARCEDO','09-06-1989','CC@OPENDEUSTO.ES',56231,7777,1,2,3,'12345678A');
INSERT INTO EMPLEADO VALUES ('78965414R','CARLOTA',1500,'IGLESIAS','08-11-1992','CI@OPENDEUSTO.ES',52346,8888,4,5,2,'98765432C');
INSERT INTO EMPLEADO VALUES ('35795145D','MARTA',2500,'ABAITUA','06-06-1996','MA@OPENDEUSTO.ES',85432,9999,4,5,3,'22558975C');
INSERT INTO EMPLEADO VALUES ('78963251A','ROBERTO',3500,'BARREDO','09-12-1991','RB@OPENDEUSTO.ES',91283,1111,12,5,4,'22558975C');
INSERT INTO EMPLEADO VALUES ('87423695A','ASUNCION',500,'CAMPO','25-08-1989','AC@OPENDEUSTO.ES',78341,4444,11,5,3,'98765432C');

/*PEDIDO*/
INSERT INTO PEDIDO VALUES (1,'2 MOVILES','20-12-2015',11,'1A1B','12345678A','45615975B',1);
INSERT INTO PEDIDO VALUES (2,'CAMISETA','10-12-2015',55,'2C2D','98765432C','78912345A',2);
INSERT INTO PEDIDO VALUES (3,'PANTALON GRANDE','14-12-2015',44,'1A1B','98765432C','45876562C',2);
INSERT INTO PEDIDO VALUES (4,'1 MOVIL','22-12-2015',22,'1A1B','78912345J','45615975B',3);
INSERT INTO PEDIDO VALUES (5,'2 CAMISETAS','20-01-2015',33,'1A1B','35795145D','56390874E',5);
INSERT INTO PEDIDO VALUES (6,'3 CAMISETAS','19-01-2015',44,'2C2D','87423695A','14725836I',4);
INSERT INTO PEDIDO VALUES (7,'CINTURON','10-12-2015',55,'3E4F','35795145D','78945632K',5);
INSERT INTO PEDIDO VALUES (8,'BLUSA','30-05-2015',44,'1A1B','78912345J','14725836I',6);
INSERT INTO PEDIDO VALUES (9,'FUNDA','21-06-2015',55,'3E4F','87423695A','32165478L',8);
INSERT INTO PEDIDO VALUES (10,'CAMISA','22-01-2015',33,'7I8J','78945615I','85296374H',9);
INSERT INTO PEDIDO VALUES (11,'CHAMARRA','15-12-2015',22,'1A1B','78912345J','96385274G',12);
INSERT INTO PEDIDO VALUES (12,'JERSEY','14-11-2015',33,'2C2D','78945615I','74185296F',11);


/*PRODUCTO*/
INSERT INTO PRODUCTO VALUES (14,'ROSA','CAMISA',20,1);
INSERT INTO PRODUCTO VALUES (15,'DORADO','MOVIL',120,2);
INSERT INTO PRODUCTO VALUES (16,'AZUL','FUNDA',25,3);
INSERT INTO PRODUCTO VALUES (17,'VAQUERO','PANTALON',30,4);
INSERT INTO PRODUCTO VALUES (18,'MARRON','MANTA',20,5);
INSERT INTO PRODUCTO VALUES (19,'FUCSIA','BLUSA',20,6);
INSERT INTO PRODUCTO VALUES (20,'VERDE','CHAMARRA',55,7);
INSERT INTO PRODUCTO VALUES (21,'AMARILLO','JERSEY',25,8);
INSERT INTO PRODUCTO VALUES (22,'MORADO','PANTALON GRANDE',45,9);
INSERT INTO PRODUCTO VALUES (23,'MARRON','CINTURON',15,10);
INSERT INTO PRODUCTO VALUES (24,'PLATEADO','MOVIL',34,11);
INSERT INTO PRODUCTO VALUES (25,'MARRON','CAMISETA',21,12);


/*RECLAMACION_QUEJA*/
INSERT INTO RECLAMACION_QUEJA VALUES(23,'ATENDIDA',01, 'ROTO',1,'12345678A');
INSERT INTO RECLAMACION_QUEJA VALUES(24,'EN ESPERA',10, 'RAYADO',2,'78912345J');
INSERT INTO RECLAMACION_QUEJA VALUES(25,'EN CURSO',11, 'NORECIBIDO',3,'78912345J');
INSERT INTO RECLAMACION_QUEJA VALUES(26,'EN ESPERA',111, 'AVERIADO',4,'78965414R');
INSERT INTO RECLAMACION_QUEJA VALUES(27,'FINALLIZADA',100, 'NOENTREGADO',5,'74185296A');
INSERT INTO RECLAMACION_QUEJA VALUES(28,'FINALLIZADA',101, 'AVERIADO',6,'78965414R');
INSERT INTO RECLAMACION_QUEJA VALUES(29,'EN CURSO',110, 'ROTO',7,'65412398E');
INSERT INTO RECLAMACION_QUEJA VALUES(30,'EN ESPERA',112, 'NOENTREGADO',8,'65412398E');
INSERT INTO RECLAMACION_QUEJA VALUES(31,'ATENDIDA',103, 'AVERIADO',9,'78945615I');
INSERT INTO RECLAMACION_QUEJA VALUES(32,'FINALLIZADA',104, 'NOENTREGADO',10,'78945615I');
INSERT INTO RECLAMACION_QUEJA VALUES(33,'EN ESPERA',105, 'ROTO',11,'96385274M');
INSERT INTO RECLAMACION_QUEJA VALUES(34,'EN CURSO',106, 'NOENTREGADO',12,'96385274M');

/*DISPONIBILIDAD*/
INSERT INTO DISPONIBILIDAD VALUES (5,3,4);
INSERT INTO DISPONIBILIDAD VALUES (3,4,8);
INSERT INTO DISPONIBILIDAD VALUES (2,1,1);
INSERT INTO DISPONIBILIDAD VALUES (1,2,2);
INSERT INTO DISPONIBILIDAD VALUES (4,5,4);
INSERT INTO DISPONIBILIDAD VALUES (8,7,2);
INSERT INTO DISPONIBILIDAD VALUES (6,9,3);
INSERT INTO DISPONIBILIDAD VALUES (7,8,4);
INSERT INTO DISPONIBILIDAD VALUES (10,12,2);
INSERT INTO DISPONIBILIDAD VALUES (9,10,1);
INSERT INTO DISPONIBILIDAD VALUES (12,11,1);
INSERT INTO DISPONIBILIDAD VALUES (11,6,4);

/* DOMICILIO_EMPLEADO*/
INSERT INTO DOMICILIO_EMPLEADO VALUES (3,'12345678A');
INSERT INTO DOMICILIO_EMPLEADO VALUES (5,'98765432C');
INSERT INTO DOMICILIO_EMPLEADO VALUES (4,'22558975C');
INSERT INTO DOMICILIO_EMPLEADO VALUES (2,'78912345J');
INSERT INTO DOMICILIO_EMPLEADO VALUES (1,'74185296A');
INSERT INTO DOMICILIO_EMPLEADO VALUES (6,'96385274M');
INSERT INTO DOMICILIO_EMPLEADO VALUES (9,'78945615I');
INSERT INTO DOMICILIO_EMPLEADO VALUES (8,'65412398E');
INSERT INTO DOMICILIO_EMPLEADO VALUES (7,'78965414R');
INSERT INTO DOMICILIO_EMPLEADO VALUES (12,'35795145D');
INSERT INTO DOMICILIO_EMPLEADO VALUES (11,'78963251A');
INSERT INTO DOMICILIO_EMPLEADO VALUES (10,'87423695A');

/* DOMICILIO_USUARIO*/
INSERT INTO DOMICILIO_USUARIO VALUES ('78912345A',1);
INSERT INTO DOMICILIO_USUARIO VALUES ('45615975B',3);
INSERT INTO DOMICILIO_USUARIO VALUES ('45876562C',2);
INSERT INTO DOMICILIO_USUARIO VALUES ('78945623D',4);
INSERT INTO DOMICILIO_USUARIO VALUES ('56390874E',5);
INSERT INTO DOMICILIO_USUARIO VALUES ('74185296F',6);
INSERT INTO DOMICILIO_USUARIO VALUES ('96385274G',8);
INSERT INTO DOMICILIO_USUARIO VALUES ('85296374H',9);
INSERT INTO DOMICILIO_USUARIO VALUES ('14725836I',7);
INSERT INTO DOMICILIO_USUARIO VALUES ('36925814J',11);
INSERT INTO DOMICILIO_USUARIO VALUES ('78945632K',10);
INSERT INTO DOMICILIO_USUARIO VALUES ('32165478L',12);


/*CONTIENE*/
INSERT INTO CONTIENE VALUES(15,1,2);
INSERT INTO CONTIENE VALUES(14,2,1);
INSERT INTO CONTIENE VALUES(15,3,2);
INSERT INTO CONTIENE VALUES(15,4,2);
INSERT INTO CONTIENE VALUES(15,5,2);
INSERT INTO CONTIENE VALUES(25,7,4);
INSERT INTO CONTIENE VALUES(16,12,3);
INSERT INTO CONTIENE VALUES(18,10,1);
INSERT INTO CONTIENE VALUES(17,11,2);
INSERT INTO CONTIENE VALUES(20,8,1);
INSERT INTO CONTIENE VALUES(22,9,2);
INSERT INTO CONTIENE VALUES(21,6,3);

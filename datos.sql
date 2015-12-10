/*FICHERO PARA LA CARGA DE DATOS DE PRUEBA DE LA BASE DE DATOS*/

/*PRODUCTO*/
INSERT INTO PRODUCTO VALUES (14,'ROSA','CAMISA',20,01);
INSERT INTO PRODUCTO VALUES (15,'DORADO','MOVIL',120,02);
INSERT INTO PRODUCTO VALUES (16,'AZUL','FUNDA',25,03);
INSERT INTO PRODUCTO VALUES (17,'VAQUERO','PANTALON',30,04);
INSERT INTO PRODUCTO VALUES (18,'MARRON','MANTA',20,01);

/*RECLAMACION_QUEJA*/
INSERT INTO RECLAMACION_QUEJA VALUES(23,'ATENDIDA',01, 'ROTO',01,'123456789A');
INSERT INTO RECLAMACION_QUEJA VALUES(24,'EN ESPERA',10, 'RAYADO',11,'987654321C');
INSERT INTO RECLAMACION_QUEJA VALUES(25,'EN CURSO',11, 'NORECIBIDO',22,'225589758G');
INSERT INTO RECLAMACION_QUEJA VALUES(26,'EN ESPERA',10, 'AVERIADO',11,'789123456J');
INSERT INTO RECLAMACION_QUEJA VALUES(27,'FINALLIZADA',100, 'NOENTREGADO',33,'741852963');

/*DISPONIBILIDAD*/
INSERT INTO DISPONIBILIDAD VALUES (5,3,4);
INSERT INTO DISPONIBILIDAD VALUES (3,4,8);
INSERT INTO DISPONIBILIDAD VALUES (2,1,1);
INSERT INTO DISPONIBILIDAD VALUES (1,2,2);
INSERT INTO DISPONIBILIDAD VALUES (4,5,4);

/* DOMICILIO_EMPLEADO*/
INSERT INTO DOMICILIO_EMPLEADO VALUES ('123456789A',3);
INSERT INTO DOMICILIO_EMPLEADO VALUES ('987654321C',5);
INSERT INTO DOMICILIO_EMPLEADO VALUES ('225589758G',4);
INSERT INTO DOMICILIO_EMPLEADO VALUES ('789123456J',2);
INSERT INTO DOMICILIO_EMPLEADO VALUES ('741852963A',1);

/* DOMICILIO_USUARIO*/
INSERT INTO DOMICILIO_USUARIO VALUES ('111111111A',1);
INSERT INTO DOMICILIO_USUARIO VALUES ('222222222B',3);
INSERT INTO DOMICILIO_USUARIO VALUES ('333333333C',2);
INSERT INTO DOMICILIO_USUARIO VALUES ('444444444D',4);
INSERT INTO DOMICILIO_USUARIO VALUES ('555555555E',5);
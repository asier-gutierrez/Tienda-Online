/*FICHERO PARA CREACIÓN DE BASE DE DATOS*/

/*BIEN*/
CREATE TABLE CIUDAD (
ID NUMBER(5) CONSTRAINT CIUDAD_ID_NONULA NOT NULL CONSTRAINT CIUDAD_ID_PK PRIMARY KEY,
NOMBRE VARCHAR(30) CONSTRAINT CIUDAD_NOMBRE_NONULA NOT NULL CONSTRAINT CIUDAD_NOMBRE_UNICO UNIQUE
);

/*FALTA AÑADIR LA DIRECCIÓN QUE DEBERÍA SER DE N A N*/
CREATE TABLE USUARIO(
DNI VARCHAR(9) CONSTRAINT USUARIO_DNI_NONULO NOT NULL CONSTRAINT USUARIO_DNI_PK PRIMARY KEY,
NOMBRE VARCHAR(25) CONSTRAINT USUARIO_NOMBRE_NONULO NOT NULL CONSTRAINT USUARIO_NOMBRE_UNICO UNIQUE,
APELLIDO VARCHAR(40) CONSTRAINT USUARIO_APELLIDO_NONULO NOT NULL CONSTRAINT USUARIO_APELLIDO_UNICO UNIQUE,
EMAIL VARCHAR(60) CONSTRAINT USUARIO_EMAIL_NONULO NOT NULL CONSTRAINT USUARIO_EMAIL_UNICO UNIQUE,
CONTRA VARCHAR(32) CONSTRAINT USUARIO_CONTRA_NONULO NOT NULL,
FECHA_NACIMIENTO DATE CONSTRAINT USUARIO_FECHA_NACIMIENTO_NONULO NOT NULL
);

/*BIEN*/
CREATE TABLE TIPO_DATO_BANCARIO(
ID NUMBER(2) CONSTRAINT TIPO_DATO_BANCARIO_ID_NONULO NOT NULL CONSTRAINT TIPO_DATO_BANCARIO_ID_PK PRIMARY KEY,
DENOMINACION VARCHAR (25) CONSTRAINT TIPO_DATO_BANCARIO_DENOMINACION_NONULO NOT NULL CONSTRAINT TIPO_DATO_BANCARIO_DENOMINACION_UNICO UNIQUE
);

CREATE TABLE DATO_BANCARIO(
NUM VARCHAR(24) CONSTRAINT DATO_BANCARIO_NUM_NONULO NOT NULL CONSTRAINT DATO_BANCARIO_NUM_PK PRIMARY KEY ON DELETE CASCADE,
CVV NUMBER(3) CONSTRAINT DATO_BANCARIO_CVV_NONULO NOT NULL,
TIPO_DATO_BANCARIO_ID NUMBER(2) CONSTRAINT DATO_BANCARIO_TIPO_DATO_BANCARIO_ID_NONULO NOT NULL CONSTRAINT DATO_BANCARIO_TIPO_DATO_BANCARIO_ID_FK_DATO_BANCARIO_ID REFERENCES TIPO_DATO_BANCARIO(ID) ON DELETE CASCADE,
USUARIO_DNI VARCHAR(9) CONSTRAINT DATO_BANCARIO_USUARIO_DNI_NONULO NOT NULL CONSTRAINT DATO_BANCARIO_USUARIO_DNI_FK_USUARIO_DNI REFERENCES USUARIO(DNI) ON DELETE CASCADE
);

/*BIEN*/
CREATE TABLE PUESTO(
ID NUMBER(4) CONSTRAINT PUESTO_ID_NONULO NOT NULL CONSTRAINT PUESTO_ID_PK PRIMARY KEY,
DENOMINACION VARCHAR(30) CONSTRAINT PUESTO_DENOMINACION_NONULO NOT NULL CONSTRAINT PUESTO_DENOMINACION_UNICO UNIQUE
);

/*BIEN*/
CREATE TABLE ESTADO_PEDIDO(
ID NUMBER(2) CONSTRAINT ESTADO_PEDIDO_ID_NONULO NOT NULL CONSTRAINT ESTADO_PEDIDO_ID_PK PRIMARY KEY,
DENOMINACION VARCHAR(20) ESTADO_PEDIDO_DENOMINACION_NONULO NOT NULL CONSTRAINT ESTADO_PEDIDO_DENOMINACION_UNICO UNIQUE
);

/*BIEN*/
CREATE TABLE CODIGO_POSTAL(
CODIGO NUMBER(7) CONSTRAINT CODIGO_POSTAL_NONULO NOT NULL CONSTRAINT CODIGO_POSTAL_PK PRIMARY KEY,
CIUDAD_ID NUMBER(5) CONSTRAINT CODIGO_POSTAL_CIUDAD_ID_NONULA NOT NULL CONSTRAINT CODIGO_POSTAL_CIUDAD_ID_FK_CIUDAD_ID REFERENCES CIUDAD(ID) ON DELETE CASCADE
);


/*BIEN*/
CREATE TABLE DIRECCION(
ID NUMBER(9) CONSTRAINT DIRECCION_ID_NONULO NOT NULL CONSTRAINT DIRECCION_ID_PK PRIMARY KEY,
DIR VARCHAR(40) CONSTRAINT DIRECCION_DIR_NONULO NOT NULL CONSTRAINT DIRECCION_DIR_UNICO UNIQUE
CIUDAD_ID NUMBER(5) CONSTRAINT DIRECCION_CIUDAD_ID_NONULO NOT NULL CONSTRAINT DIRECCION_CIUDAD_ID_FK_CIUDAD_ID REFERENCES CIUDAD(ID) ON DELETE CASCADE,
CP NUMBER(7) CONSTRAINT DIRECCION_CODIGO_POSTAL_NONULO NOT NULL CONSTRAINT DIRECCION_CODIGO_POSTAL_FK_CODIGO_POSTAL_CODIGO REFERENCES CODIGO_POSTAL(CODIGO) ON DELETE CASCADE
);


CREATE TABLE MODELO(
ID NUMBER (9) CONSTRAINT MODELO_ID_NONULO NOT NULL CONSTRAINT MODELO_ID_PK PRIMARY KEY,
NOMBRE VARCHAR(25) CONSTRAINT MODELO_NOMBRE_NONULO NOT NULL CONSTRAINT MODELO_NOMBRE_UNICO UNIQUE
);


CREATE TABLE CENTRO_DE_OPERACIONES(
ID NUMBER(9) CONSTRAINT CENTRO_DE_OPERACIONES_ID_NONULO NOT NULL CONSTRAINT CENTRO_DE_OPERACIONES_ID_PK PRIMARY KEY,
DENOMINACION VARCHAR(20) CONSTRAINT CENTRO_DE_OPERACIONES_DENOMINACION_NONULO NOT NULL
);


/**/
CREATE TABLE ALMACEN(
ID NUMBER(9) CONSTRAINT ALMACEN_ID_NONULO NOT NULL CONSTRAINT ALMACEN_ID_PK PRIMARY KEY,
DENOMINACION VARCHAR(20) CONSTRAINT ALMACEN_DENOMINACION_NONULO NOT NULL,
ID_C_OPS NUMBER(9) CONSTRAINT ALMACEN_ID_C_OPS_NONULO NOT NULL CONSTRAINT ALMACEN_ID_C_OPS_FK_CENTRODEOPERACIONES_ID REFERENCES CENTRO_DE_OPERACIONES(ID) ON DELETE CASCADE
);

CREATE TABLE OFICINA(
ID NUMBER(9) CONSTRAINT OFICINA_ID_NONULO NOT NULL CONSTRAINT OFICINA_ID_PK PRIMARY KEY,
DENOMINACION VARCHAR(20) CONSTRAINT OFICINA_DENOMINACION_NONULO NOT NULL,
ID_C_OPS NUMBER(9) CONSTRAINT OFICINA_ID_C_OPS_NONULO NOT NULL CONSTRAINT OFICINA_ID_C_OPS_FK_CENTRODEOPERACIONES_ID REFERENCES CENTRO_DE_OPERACIONES(ID) ON DELETE CASCADE
);


/**/
CREATE TABLE EMPLEADO(
DNI VARCHAR(9) CONSTRAINT EMPLEADO_DNI_NONULO NOT NULL CONSTRAINT EMPLEADO_DNI_PK PRIMARY KEY, /*HE CAMBIADO EL DNI A VARCHAR DE 9*/
NOMBRE VARCHAR(20) CONSTRAINT EMPLEADO_NOMBRE_NONULO NOT NULL,
APELLIDOS VARCHAR (40) CONSTRAINT EMPLEADO_APELLIDOS_NONULO NOT NULL,
FECHA_NACIMIENTO DATE CONSTRAINT EMPLEADO_FECHA_NACIMIENTO_NONULO NOT NULL,
EMAIL VARCHAR(25) CONSTRAINT EMPLEADO_EMAIL_NONULO NOT NULL,
NSS NUMBER(12) CONSTRAINT EMPLEADO_NSS_NONULO NOT NULL,
ID_PUESTO NUMBER(4) CONSTRAINT EMPLEADO_ID_PUESTO_NONULO NOT NULL CONSTRAINT EMPLEADO_ID_PUESTO_FK_ID_PUESTO REFERENCES PUESTO(ID) ON DELETE CASCADE,
ID_OFICINA NUMBER(9) CONSTRAINT EMPLEADO_ID_OFICINA_NONULO NOT NULL CONSTRAINT EMPLEADO_ID_OFICINA_FK_ID_OFICINA REFERENCES OFICINA(ID)ON DELETE CASCADE,
ID_ALMACEN NUMBER(9) CONSTRAINT EMPLEADO_ID_ALMACEN_NONULO NOT NULL CONSTRAINT EMPLEADO_ID_ALMACEN_FK_ID_ALMACEN REFERENCES ALMACEN(ID)ON DELETE CASCADE,
ID_DIRECCION NUMBER(9) CONSTRAINT EMPLEADO_ID_DIRECCION_NONULO NOT NULL CONSTRAINT EMPLEADO_ID_DIRECCION_FK_ID_DIRECCION REFERENCES DIRECCION(ID)ON DELETE CASCADE,
DNI_JEFE VARCHAR(9) CONSTRAINT DNI_JEFE_NONULO NOT NULL CONSTRAINT EMPLEADO_DNI_JEFE_FK_EMPLEADO_DNI_JEFE REFERENCES EMPLEADO(DNI) ON DELETE CASCADE /*AQUÍ HE PUESTO QUE REFERENCIA A SU PROPIA ENTIDAD*/
);

/**/
CREATE TABLE PEDIDO(
ID NUMBER(15) CONSTRAINT PEDIDO_ID_NONULO NOT NULL CONSTRAINT PEDIDO_ID_PK PRIMARY KEY,
DESCRIPCION VARCHAR(100),
FECHA_PEDIDO DATE CONSTRAINT PEDIDO_FECHA_NONULO NOT NULL,
ESTADO_PEDIDO_ID NUMBER(2) CONSTRAINT PEDIDO_ESTADO_PEDIDOID_NONULO NOT NULL CONSTRAINT PEDIDO_ESTADO_PEDIDOID_FK_ESTADO_PEDIDO_ID REFERENCES ESTADO_PEDIDO(ID),
NUM_DATO_BANCARIO VARCHAR(24) CONSTRAINT PEDIDO_NUM_DATO_BANCARIO_NONULO NOT NULL CONSTRAIT PEDIDO_NUM_DATO_BANCARIO_FK_DATO_BANCARIO_NUM REFERENCES DATO_BANCARIO(NUM)ON DELETE CASCADE,
DNI_EMPLEADO VARCHAR(9) CONSTRAINT PEDIDO_DNI_EMPLEADO_NONULO NOT NULL CONSTRAINT PEDIDO_DNI_EMPLEADO_FK_EMPLEADO_DNI REFERENCES EMPLEADO(DNI)ON DELETE CASCADE,
DNI_USUARIO VARCHAR(9) CONSTRAINT PEDIDO_DNI_USUARIO_NONULO NOT NULL CONSTRAINT PEDIDO_DNIUSUARIO_FK_USUARIO_DNI REFERENCES USUARIO(DNI)ON DELETE CASCADE,
DIR_ID NUMBER(9) CONSTRAINT PEDIDO_DIR_ID_NONULO NOT NULL CONSTRAINT PEDIDO_DIR_ID_FK_DIRECCION_ID REFERENCES DIRECCION(ID) ON DELETE CASCADE
);

/**/
CREATE TABLE PRODUCTO(
ID NUMBER (9) CONSTRAINT PRODUCTO_ID_NONULO NOT NULL CONSTRAINT PRODUCTO_ID_PK PRIMARY KEY,
DESCRIPCION VARCHAR(45) CONSTRAINT PRODUCTO_DESCRIPCION_NONULO NOT NULL,
NOMBRE VARCHAR(25) CONSTRAINT PRODUCTO_NOMBRE_NONULO NOT NULL CONSTRAINT PRODUCTO_NOMBRE_UNICO UNIQUE,
PRECIO NUMBER (6) CONSTRAINT PRODUCTO_PRECIO_NONULO NOT NULL,
MODELO_ID NUMBER(9)  CONSTRAINT PRODUCTO_MODELO_ID_NONULO NOT NULL CONSTRAINT PRODUCTO_MODELO_ID_FK_MODELO_ID REFERENCES MODELO(ID) ON DELETE CASCADE
);

/*PRODUCTO Y PEDIDO*/

/**/
CREATE TABLE RECLAMACION_QUEJA( 
ID NUMBER(9) CONSTRAINT RECLAMACION_QUEJA_ID_NONULO NOT NULL CONSTRAINT RECLAMACION_QUEJA_ID_PK PRIMARY KEY,
DENOMINACION  VARCHAR(20) CONSTRAINT RECLAMACION_QUEJA_DENOMINACION_NONULO NOT NULL,
NUM_RECLAMACION NUMBER (9) CONSTRAINT RECLAMACION_QUEJA_NUM_RECLAMACION_NONULO CONSTRAINT RECLAMACION_QUEJA_NUM_RECLAMACION_UNICO UNIQUE,
DESCRIPCION VARCHAR(25) CONSTRAINT RECLAMACION_QUEJA_DESCRIPCION_NONULO NOT NULL,
ID_PEDIDO NUMBER(15) CONSTRAINT RECLAMACION_QUEJA_PEDIDOID_NONULO NOT NULL CONSTRAINT RECLAMACION_QUEJA_IDPEDIDO_FK_PEDIDO_ID REFERENCES PEDIDO(ID) ON DELETE CASCADE,
DNI_EMPLEADO VARCHAR(9) CONSTRAINT RECLAMACION_QUEJA_DNI_EMPLEADO_NONULO NOT NULL CONSTRAINT RECLAMACION_QUEJA_DNI_EMPLEADO_FK_EMPLEADO_DNI REFERENCES EMPLEADO(DNI) ON DELETE CASCADE
);

/*REVISAR*/
CREATE TABLE DISPONIBILIDAD(
ID_MODELO NUMBER(9) CONSTRAINT DISPONIBILIDAD_ID_MODELO_NONULO NOT NULL CONSTRAINT DISPONIBILIDAD_ID_MODELO_FK_MODELO_ID REFERENCES MODELO(ID) ON DELETE CASCADE,
ID_ALMACEN NUMBER(9) CONSTRAINT DISPONIBILIDAD_ID_ALMACEN_NUNULO NOT NULL CONSTRAINT DISPONIBILIDAD_ID_ALMACEN_FK_ALMACEN_ID REFERENCES ALMACEN(ID) ON DELETE CASCADE,
CANTIDAD NUMBER(9) CONSTRAINT DISPONIBILIDAD_CANTIDAD_CERO_PORDEFECTO DEFAULT 0,
PRIMARY KEY ( ID_MODELO, ID_ALMACEN )
);

/*REVISAR*/
CREATE TABLE VIVE_EN(
ID_DIRECCION NUMBER(9) CONSTRAINT VIVE_EN_ID_DIRECCION_NONULO NOT NULL CONSTRAINT VIVE_EN_ID_DIRECCION_FK_ID_DIRECCION REFERENCES DIRECCION(ID) ON DELETE CASCADE,
DNI_EMPLEADO VARCHAR(9) CONSTRAINT VIVE_EN_DNI_EMPLEADO_NONULO NOT NULL CONSTRAINT VIVE_EN_DNI_EMPLEADO_FK_DNI_EMPLEADO REFERENCES EMPLEADO(DNI) ON DELETE CASCADE,
PRIMARY KEY ( ID_DIRECCION, DNI_EMPLEADO )
);

/*REVISAR*/
CREATE TABLE DIR_DEL_USUARIO(
DNI_USUARIO VARCHAR(9) CONSTRAINT DIR_DEL_USUARIO_DNI_NO_NULO NOT NULL CONSTRAINT DIR_DEL_USUARIO_DNI_USUARIO_FK_DNI_USUARIO REFERENCES USUARIO(DNI) ON DELETE CASCADE,
ID_DIRECCION NUMBER(9) CONSTRAINT DIR_DEL_USUARIO_ID_DIRECCION_NONULO NOT NULL DIR_DEL_USUARIO_ID_DIRECCION_FK_ID_DIRECCION REFERENCES DIRECCION(ID) ON DELETE CASCADE,
PRIMARY KEY(DNI_USUARIO,ID_DIRECCION)

);



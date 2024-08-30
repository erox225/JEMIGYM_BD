USE FUNCTIONALGYM;

-- Table: USUARIO
CREATE TABLE USUARIO (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    IX VARCHAR(7) NOT NULL UNIQUE,
    USERNAME VARCHAR(35) UNIQUE,
    PASSWORD VARCHAR(12),
    ROL INT,
    FECHA_CREACION DATE,
    FECHA_MODIFICACION DATE,
    ACTIVO BOOLEAN
);

-- Table: PERSONA
CREATE TABLE PERSONA (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    NOMBRE VARCHAR(30),
    TIPO_PERSONA INT,
    APELLIDOS VARCHAR(50),
    FECHA_NACIMIENTO DATE,
    TELEFONO VARCHAR(9),
    FECHA_CREACION DATE,
    FECHA_MODIFICACION DATE,
    IX_USUARIO VARCHAR(7),
    FOREIGN KEY (IX_USUARIO) REFERENCES USUARIO(IX)
);

-- Table: ESTANCIA
CREATE TABLE ESTANCIA (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    NOMBRE VARCHAR(35),
    FECHA_CREACION DATE,
    FECHA_MODIFICACION DATE
);

-- Table: ESTADO
CREATE TABLE ESTADO (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    TIPO VARCHAR(30),
    NAME VARCHAR(35),
    FECHA_CREACION DATE
);

-- Table: ESTADO_CLIENTE
CREATE TABLE ESTADO_CLIENTE (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    ID_ESTADO INT,
    ID_CLIENTE INT,
    MOTIVO INT NOT NULL,
    FECHA_CREACION DATE,
    FOREIGN KEY (ID_ESTADO) REFERENCES ESTADO(ID),
    FOREIGN KEY (ID_CLIENTE) REFERENCES USUARIO(ID)
);

-- Table: CLASE
CREATE TABLE CLASE (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    NOMBRE VARCHAR(35),
    DESCRIPCION VARCHAR(255),
    FECHA_CREACION DATE,
    FECHA_MODIFICACION DATE,
    ESTADO BOOLEAN,
    AFORO_MAX INT
);

-- Table: CALENDARIO
CREATE TABLE CALENDARIO (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    NOMBRE VARCHAR(35),
    DESCRIPCION VARCHAR(255),
    FECHA_CREACION DATE,
    FECHA_MODIFICACION DATE
);

-- Table: SUSCRIPCION
CREATE TABLE SUSCRIPCION (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    NOMBRE VARCHAR(35),
    DESCRIPCION VARCHAR(255),
    FECHA_CREACION DATE,
    FECHA_MODIFICACION DATE,
    ACTIVO BOOLEAN
);

-- Table: CONFIGURACION_SUSCRIPCION
CREATE TABLE CONFIGURACION_SUSCRIPCION (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    VALUE VARCHAR(35),
    ID_SUSCRIPCION INT,
    DESCRIPCION VARCHAR(255),
    FECHA_CREACION DATE,
    FECHA_MODIFICACION DATE,
	ESTADO BOOLEAN,
    FOREIGN KEY (ID_SUSCRIPCION) REFERENCES SUSCRIPCION(ID)
);

-- Table: CONFIGURACION_GENERAL
CREATE TABLE CONFIGURACION_GENERAL (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    NOMBRE VARCHAR(35),
	VALUE VARCHAR(30),
	DESCRIPCION VARCHAR(255),
    FECHA_CREACION DATE,
    FECHA_MODIFICACION DATE,
	ESTADO BOOLEAN
);

-- Table: CLIENTE_SUSCRIPCION
CREATE TABLE CLIENTE_SUSCRIPCION (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    FECHA_CREACION DATE,
    FECHA_MODIFICACION DATE,
    ID_CLIENTE INT,
    ID_SUSCRIPCION INT,
    FECHA_INICIO DATE,
    FECHA_FIN DATE,
	ESTADO VARCHAR(30),
    FOREIGN KEY (ID_CLIENTE) REFERENCES USUARIO(ID),
    FOREIGN KEY (ID_SUSCRIPCION) REFERENCES SUSCRIPCION(ID)
);

-- Table: PLANIFICACION
CREATE TABLE PLANIFICACION (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    FECHA_MODIFICACION DATE,
    ID_CLASE INT,
    ID_CALENDARIO INT,
    ID_CLIENTE INT,
    ID_ESTANCIA INT,
    DIA_EJECUCION DATE,
    HORA_INICIO VARCHAR(30),
    HORA_FIN VARCHAR(30),
    ESTADO BOOLEAN,
    MOSTRAR BOOLEAN,
    PERMANENTE BOOLEAN,
    FOREIGN KEY (ID_CLASE) REFERENCES CLASE(ID),
    FOREIGN KEY (ID_CALENDARIO) REFERENCES CALENDARIO(ID),
    FOREIGN KEY (ID_CLIENTE) REFERENCES USUARIO(ID),
    FOREIGN KEY (ID_ESTANCIA) REFERENCES ESTANCIA(ID)
);

-- Table: RESERVA
CREATE TABLE RESERVA (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    FECHA_CREACION DATE,
    FECHA_MODIFICACION DATE,
    ID_CLIENTE INT,
    ID_PLANIFICACION INT,
    FOREIGN KEY (ID_CLIENTE) REFERENCES USUARIO(ID),
    FOREIGN KEY (ID_PLANIFICACION) REFERENCES PLANIFICACION(ID)
);

-- Table: RESERVA_ESTADOS
CREATE TABLE RESERVA_ESTADOS (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    ID_RESERVA INT,
    ID_ESTADO INT,
    FECHA_CREACION DATE,
    FOREIGN KEY (ID_RESERVA) REFERENCES RESERVA(ID),
    FOREIGN KEY (ID_ESTADO) REFERENCES ESTADO(ID)
);

-- Table: QR
CREATE TABLE QR (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    QR_VALUE VARCHAR(10),
    FECHA_CREACION_MILISEGUNDOS BIGINT,
    IX_USUARIO VARCHAR(7),
    ID_RESERVA INT,
    ESTADO BOOLEAN,
    FOREIGN KEY (IX_USUARIO) REFERENCES USUARIO(IX),
    FOREIGN KEY (ID_RESERVA) REFERENCES RESERVA(ID)
);

-- Table: CONTROL_ACCESO
CREATE TABLE CONTROL_ACCESO (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    ID_QR INT,
    ID_ESTANCIA INT,
    FECHA_CREACION DATE,
    TIPO VARCHAR(25),
    RESULTADO BOOLEAN,
    FOREIGN KEY (ID_QR) REFERENCES QR(ID),
    FOREIGN KEY (ID_ESTANCIA) REFERENCES ESTANCIA(ID)
);

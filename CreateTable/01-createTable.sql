USE JEMIGYM;

CREATE TABLE USUARIO (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    IX VARCHAR(255) UNIQUE,
    USERNAME VARCHAR(255) UNIQUE,
    PASSWORD VARCHAR(255),
    ROL INT,
    FECHA_CREACION DATE,
    FECHA_MODIFICACION DATE,
    ACTIVO BOOLEAN
) ENGINE=InnoDB;

CREATE TABLE PERSONA (
    ID INT PRIMARY KEY,
    NOMBRE VARCHAR(255),
    TIPO_PERSONA INT,
    APELLIDOS VARCHAR(255),
    FECHA_NACIMIENTO DATE,
    TELEFONO VARCHAR(20),
    FECHA_CREACION DATE,
    FECHA_MODIFICACION DATE,
    IX VARCHAR(255),
    FOREIGN KEY (IX) REFERENCES USUARIO(IX)
) ENGINE=InnoDB;

CREATE TABLE ESTANCIA (
    ID INT PRIMARY KEY,
    NOMBRE VARCHAR(255),
    FECHA_CREACION DATE,
    FECHA_MODIFICACION DATE
) ENGINE=InnoDB;

CREATE TABLE ESTADO (
    ID INT PRIMARY KEY,
    TIPO VARCHAR(255),
    NAME VARCHAR(255),
    FECHA_CREACION DATE
) ENGINE=InnoDB;

CREATE TABLE ESTADO_PERSONA (
    ID INT PRIMARY KEY,
    ID_ESTADO INT,
    ID_PERSONA INT,
    MOTIVO INT NOT NULL,
    FECHA_CREACION DATE,
    FOREIGN KEY (ID_ESTADO) REFERENCES ESTADO(ID),
    FOREIGN KEY (ID_PERSONA) REFERENCES PERSONA(ID)
) ENGINE=InnoDB;

CREATE TABLE CLASE (
    ID INT PRIMARY KEY,
    NOMBRE VARCHAR(255),
    DESCRIPCION TEXT,
    FECHA_CREACION DATE,
    FECHA_MODIFICACION DATE
) ENGINE=InnoDB;

CREATE TABLE CALENDARIO (
    ID INT PRIMARY KEY,
    NOMBRE VARCHAR(255),
    DESCRIPCION TEXT,
    FECHA_CREACION DATE,
    FECHA_MODIFICACION DATE
) ENGINE=InnoDB;

CREATE TABLE SUSCRIPCION (
    ID INT PRIMARY KEY,
    NOMBRE VARCHAR(255),
    DESCRIPCION TEXT,
    FECHA_CREACION DATE,
    FECHA_MODIFICACION DATE,
    ACTIVO BOOLEAN
) ENGINE=InnoDB;

CREATE TABLE CONFIGURACION (
    ID INT PRIMARY KEY,
    NOMBRE VARCHAR(255),
    FECHA_CREACION DATE,
    FECHA_MODIFICACION DATE
) ENGINE=InnoDB;

CREATE TABLE QR (
    ID INT PRIMARY KEY,
	QR_VALUE VARCHAR(255) UNIQUE,
    FECHA_CREACION DATE,
    ID_USUARIO INT,
    ID_ESTANCIA INT,
    FOREIGN KEY (ID_USUARIO) REFERENCES USUARIO(ID),
    FOREIGN KEY (ID_ESTANCIA) REFERENCES ESTANCIA(ID)
) ENGINE=InnoDB;

CREATE TABLE CONFIGURACION_SUSCRIPCION (
    ID INT PRIMARY KEY,
    VALUE VARCHAR(255),
    ID_SUSCRIPCION INT,
    ID_CONFIGURACION INT,
    DESCRIPCION TEXT,
    FECHA_CREACION DATE,
    FECHA_MODIFICACION DATE,
    FOREIGN KEY (ID_SUSCRIPCION) REFERENCES SUSCRIPCION(ID),
    FOREIGN KEY (ID_CONFIGURACION) REFERENCES CONFIGURACION(ID)
) ENGINE=InnoDB;

CREATE TABLE PERSONA_SUSCRIPCION (
    ID INT PRIMARY KEY,
    FECHA_CREACION DATE,
    FECHA_MODIFICACION DATE,
    ID_PERSONA INT,
    ID_SUSCRIPCION INT,
    FECHA_VALIDEZ DATE,
    FOREIGN KEY (ID_PERSONA) REFERENCES PERSONA(ID),
    FOREIGN KEY (ID_SUSCRIPCION) REFERENCES SUSCRIPCION(ID)
) ENGINE=InnoDB;

CREATE TABLE PLANIFICACION (
    ID INT PRIMARY KEY,
    FECHA_CREACION DATE,
    FECHA_MODIFICACION DATE,
    ID_CLASE INT,
    ID_CALENDARIO INT,
    ID_PERSONA INT,
    ID_ESTANCIA INT,
    DIA_EJECUCION INT,
    HORA_EJECUCION VARCHAR(8),
    HORA_FINALIZACION VARCHAR(8),
    PERMANENTE BOOLEAN,
    FOREIGN KEY (ID_CLASE) REFERENCES CLASE(ID),
    FOREIGN KEY (ID_CALENDARIO) REFERENCES CALENDARIO(ID),
    FOREIGN KEY (ID_PERSONA) REFERENCES PERSONA(ID),
    FOREIGN KEY (ID_ESTANCIA) REFERENCES ESTANCIA(ID)
) ENGINE=InnoDB;

CREATE TABLE RESERVAS (
    ID INT PRIMARY KEY,
    FECHA_CREACION DATE,
    FECHA_MODIFICACION DATE,
    ID_CLIENTE INT,
    ID_PLANIFICACION INT,
    FOREIGN KEY (ID_CLIENTE) REFERENCES PERSONA(ID),
    FOREIGN KEY (ID_PLANIFICACION) REFERENCES PLANIFICACION(ID)
) ENGINE=InnoDB;

CREATE TABLE RESERVAS_ESTADOS (
    ID INT PRIMARY KEY,
    ID_RESERVA INT,
    ID_ESTADO INT,
    FECHA_CREACION DATE,
    FECHA_MODIFICACION DATE,
    FOREIGN KEY (ID_RESERVA) REFERENCES RESERVAS(ID),
    FOREIGN KEY (ID_ESTADO) REFERENCES ESTADO(ID)
) ENGINE=InnoDB;

CREATE TABLE CONTROL_ACCESO (
    ID INT PRIMARY KEY,
    FECHA_CREACION DATE,
    TIPO VARCHAR(255),
    RESULTADO BOOLEAN,
    ID_QR INT,
    ID_ESTANCIA INT,
    FOREIGN KEY (ID_QR) REFERENCES QR(ID),
    FOREIGN KEY (ID_ESTANCIA) REFERENCES ESTANCIA(ID)
) ENGINE=InnoDB;

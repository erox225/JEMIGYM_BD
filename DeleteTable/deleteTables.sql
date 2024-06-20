USE FUNCTIONALGYM;

-- Deshabilitar el modo seguro temporalmente
SET SQL_SAFE_UPDATES = 0;

-- Eliminar la tabla CONTROL_ACCESO
DROP TABLE IF EXISTS CONTROL_ACCESO;

-- Eliminar la tabla QR
DROP TABLE IF EXISTS QR;

-- Eliminar la tabla RESERVA_ESTADOS
DROP TABLE IF EXISTS RESERVA_ESTADOS;

-- Eliminar la tabla RESERVA
DROP TABLE IF EXISTS RESERVA;

-- Eliminar la tabla PLANIFICACION
DROP TABLE IF EXISTS PLANIFICACION;

-- Eliminar la tabla CLIENTE_SUSCRIPCION
DROP TABLE IF EXISTS CLIENTE_SUSCRIPCION;

-- Eliminar la tabla CONFIGURACION_GENERAL
DROP TABLE IF EXISTS CONFIGURACION_GENERAL;

-- Eliminar la tabla CONFIGURACION_SUSCRIPCION
DROP TABLE IF EXISTS CONFIGURACION_SUSCRIPCION;

-- Eliminar la tabla SUSCRIPCION
DROP TABLE IF EXISTS SUSCRIPCION;

-- Eliminar la tabla CALENDARIO
DROP TABLE IF EXISTS CALENDARIO;

-- Eliminar la tabla CLASE
DROP TABLE IF EXISTS CLASE;

-- Eliminar la tabla ESTADO_CLIENTE
DROP TABLE IF EXISTS ESTADO_CLIENTE;

-- Eliminar la tabla ESTADO
DROP TABLE IF EXISTS ESTADO;

-- Eliminar la tabla ESTANCIA
DROP TABLE IF EXISTS ESTANCIA;

-- Eliminar la tabla PERSONA
DROP TABLE IF EXISTS PERSONA;

-- Eliminar la tabla USUARIO
DROP TABLE IF EXISTS USUARIO;

-- Volver a habilitar el modo seguro
SET SQL_SAFE_UPDATES = 1;

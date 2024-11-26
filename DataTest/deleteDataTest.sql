USE FUNCTIONALGYM;

-- Deshabilitar el modo seguro temporalmente
SET SQL_SAFE_UPDATES = 0;

-- Eliminar registros en tabla QR
DELETE FROM QR WHERE ID_RESERVA;

-- Eliminar registros en tabla RESERVA_ESTADOS
DELETE FROM RESERVA_ESTADOS WHERE ID_RESERVA;

-- Eliminar registros en tabla RESERVA
DELETE FROM RESERVA WHERE ID_PLANIFICACION;

-- Eliminar registros en tabla cliente_suscripcion
DELETE FROM cliente_suscripcion;

-- Eliminar registros en tabla PLANIFICACION
DELETE FROM PLANIFICACION;

-- Eliminar registros en tabla PERSONA
DELETE FROM PERSONA;

-- Eliminar registros en tabla USUARIO
DELETE FROM USUARIO;



-- Volver a habilitar el modo seguro
SET SQL_SAFE_UPDATES = 1;

USE FUNCTIONALGYM;

-- Deshabilitar el modo seguro temporalmente
SET SQL_SAFE_UPDATES = 0;

-- Eliminar registros de la tabla CONTROL_ACCESO (primero)
DELETE FROM CONTROL_ACCESO WHERE ID_QR IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20);

-- Eliminar registros de la tabla QR
DELETE FROM QR WHERE ID IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20);

-- Eliminar registros de la tabla RESERVA_ESTADOS
DELETE FROM RESERVA_ESTADOS WHERE ID_RESERVA IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);

-- Eliminar registros de la tabla RESERVA
DELETE FROM RESERVA WHERE ID IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);

-- Eliminar registros de la tabla PLANIFICACION
DELETE FROM PLANIFICACION WHERE ID IN (1, 2, 3, 4, 5);

-- Eliminar registros de la tabla CLASE
DELETE FROM CLASE WHERE ID IN (1, 2, 3, 4, 5);

-- Eliminar registros de la tabla PERSONA
DELETE FROM PERSONA WHERE IX_USUARIO IN ('U000001', 'U000002', 'U000003', 'U000004', 'U000005', 'U000006', 'U000007', 'U000008', 'U000009', 'U000010', 'U000011', 'U000012');

-- Eliminar registros de la tabla USUARIO
DELETE FROM USUARIO WHERE IX IN ('U000001', 'U000002', 'U000003', 'U000004', 'U000005', 'U000006', 'U000007', 'U000008', 'U000009', 'U000010', 'U000011', 'U000012');

-- Volver a habilitar el modo seguro
SET SQL_SAFE_UPDATES = 1;

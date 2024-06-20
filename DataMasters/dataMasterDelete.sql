USE FUNCTIONALGYM;

-- Deshabilitar el modo seguro temporalmente
SET SQL_SAFE_UPDATES = 0;

-- Eliminar registros de la tabla ESTANCIA
DELETE FROM ESTANCIA WHERE ID IN (1, 2);

-- Eliminar registros de la tabla ESTADO
DELETE FROM ESTADO WHERE ID IN (1, 2, 3, 4, 5, 6, 7, 8);

-- Eliminar registros de la tabla CALENDARIO
DELETE FROM CALENDARIO WHERE ID = 1;

-- Eliminar registros de la tabla SUSCRIPCION
DELETE FROM SUSCRIPCION WHERE NOMBRE = 'SUSCRIPCION GENERICA';

-- Volver a habilitar el modo seguro
SET SQL_SAFE_UPDATES = 1;
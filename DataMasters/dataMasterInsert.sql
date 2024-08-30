USE FUNCTIONALGYM;

-- Insertar datos en la tabla CALENDARIO
INSERT INTO CALENDARIO (ID, NOMBRE, DESCRIPCION, FECHA_CREACION, FECHA_MODIFICACION) VALUES
(1, 'CALENDARIO POR DEFECTO', 'ESTE ES EL CALENDARIO POR DEFECTO', NOW(), NOW());

-- Insertar datos en la tabla ESTANCIA
INSERT INTO ESTANCIA (ID, NOMBRE, FECHA_CREACION, FECHA_MODIFICACION) VALUES
(1, 'Primera sala', NOW(), NOW()),
(2, 'Segunda sala', NOW(), NOW());

-- Insertar datos en la tabla ESTADO
INSERT INTO ESTADO (ID, TIPO, NAME, FECHA_CREACION) VALUES
(1, 'CLIENTE', 'ACTIVO', NOW()),
(2, 'CLIENTE', 'BAJA', NOW()),
(3, 'CLIENTE', 'USUARIO NO ACTIVO', NOW()),
(4, 'CLIENTE', 'INTERMITENTE', NOW()),
(5, 'RESERVA', 'INSCRITO', NOW()),
(6, 'RESERVA', 'REALIZADO', NOW()),
(7, 'RESERVA', 'CANCELADO', NOW()),
(8, 'RESERVA', 'COLA', NOW());

-- Insertar datos en la tabla SUSCRIPCION
INSERT INTO SUSCRIPCION (ID, NOMBRE, DESCRIPCION, ACTIVO, FECHA_CREACION, FECHA_MODIFICACION) VALUES
(1, 'Plan premium', '1. Acceso a todas las clases (podrás reservar una clase y al finalizar tendrás acceso a otra reserva del mismo día) \n2. Plan de alimentación básico que se actualizará cada 3 meses \n3. +Más taller de postura', TRUE, CURRENT_DATE, CURRENT_DATE),
(2, 'Plan matutino', '1. Acceso a todas las clases en la mañana (podrás reservar una clase y al finalizar tendrás acceso a otra reserva matutina del mismo día) \n2. +Plan de alimentación básico que se actualizará cada 3 meses \n3. Más taller de postura', TRUE, CURRENT_DATE, CURRENT_DATE),
(3, 'Plan 3 sesiones a la semana', 'Acceso a cualquier hora 3 sesiones a la semana', TRUE, CURRENT_DATE, CURRENT_DATE),
(4, 'Plan estudiantil', '1. No podrás acceder a la franja horaria marcado en color gris \n2. Acceso a taller de postura', TRUE, CURRENT_DATE, CURRENT_DATE),
(5, 'Plan corporativo', 'No podrás acceder a la franja horaria marcado en color gris', TRUE, CURRENT_DATE, CURRENT_DATE);

-- Configuracion de suscripcion
INSERT INTO CONFIGURACION_SUSCRIPCION (ID, VALUE,ESTADO, ID_SUSCRIPCION, DESCRIPCION, FECHA_CREACION, FECHA_MODIFICACION) VALUES
(1, 'ACCESO_TOTAL', TRUE, 1, 'Acceso total a todas las clases', CURRENT_DATE, CURRENT_DATE),
(2, 'TALLER_POSTURA', TRUE, 1, 'Acceso a taller de postura', CURRENT_DATE, CURRENT_DATE),
(3, 'TALLER_POSTURA', TRUE, 2, 'Acceso a taller de postura', CURRENT_DATE, CURRENT_DATE),
(4, 'TALLER_POSTURA', TRUE, 4, 'Acceso a taller de postura', CURRENT_DATE, CURRENT_DATE),
(5, 'NO_ACCESO_FRANJA_GRIS', TRUE, 4, 'No acceso a franja horaria marcada en color gris', CURRENT_DATE, CURRENT_DATE),
(6, 'NO_ACCESO_FRANJA_GRIS', TRUE, 5, 'No acceso a franja horaria marcada en color gris', CURRENT_DATE, CURRENT_DATE),
(7, 'MAX_SESIONES_POR_SEMANA', TRUE, 3, 'Máximo 3 sesiones por semana', CURRENT_DATE, CURRENT_DATE),
(8, 'SOLO_MANANA', TRUE, 2, 'Acceso solo en la mañana', CURRENT_DATE, CURRENT_DATE);

-- Configuracion General
INSERT INTO CONFIGURACION_GENERAL (ID, NOMBRE, VALUE, DESCRIPCION, FECHA_CREACION, FECHA_MODIFICACION, ESTADO) VALUES
(1, 'FRANJA_1_GRIS_INICIO', '08:00', 'Inicio de la primera franja horaria gris', CURRENT_DATE, CURRENT_DATE, TRUE),
(2, 'FRANJA_1_GRIS_FIN', '09:00', 'Fin de la primera franja horaria gris', CURRENT_DATE, CURRENT_DATE, TRUE),
(3, 'FRANJA_MANANA_INICIO', '07:00', 'Inicio de la franja horaria de la mañana', CURRENT_DATE, CURRENT_DATE, TRUE),
(4, 'FRANJA_MANANA_FIN', '12:00', 'Fin de la franja horaria de la mañana', CURRENT_DATE, CURRENT_DATE, TRUE),
(5, 'MAX_CLASES_DIA', '2', 'Máximo de clases por día', CURRENT_DATE, CURRENT_DATE, TRUE),
(6, 'TIEMPO_ENTRE_CLASES', '15', 'Tiempo entre clases en minutos', CURRENT_DATE, CURRENT_DATE, TRUE),
(7, 'FRANJA_2_GRIS_INICIO', '17:00', 'Inicio de la segunda franja horaria gris', CURRENT_DATE, CURRENT_DATE, TRUE),
(8, 'FRANJA_2_GRIS_FIN', '18:00', 'Fin de la segunda franja horaria gris', CURRENT_DATE, CURRENT_DATE, TRUE),
(9, 'ENTRADA_ANTES_CLASE', '15', 'Tiempo de entrada minima entre clases', CURRENT_DATE, CURRENT_DATE, TRUE);

	
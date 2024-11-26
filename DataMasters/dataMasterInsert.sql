USE FUNCTIONALGYM;

-- En este Script insertaremos los maestros necesarios para la Aplicacion

-- Insertar datos en la tabla DURACION
-- Aqui estamos insertando los tipos de duracion que puede tener una clase
INSERT INTO DURACION (ID, VALUE, FECHA_CREACION)
VALUES
(1, '15', NOW()),
(2, '30', NOW()),
(3, '45', NOW()),
(4, '50', NOW()),
(5, '60', NOW()),
(6, '75', NOW()),
(7, '90', NOW()),
(8, '120', NOW());


-- Insertar datos en la tabla TIPO_CLASE
-- Aqui estamos insertando los tipos de clase que puede ser una clase
INSERT INTO TIPO_CLASE (ID, VALUE, COLOR, FECHA_CREACION)
VALUES
(1, 'Cardio/Fuerza', '#4CAF50', NOW()),
(2, 'Fuerza', '#FF9800', NOW()),
(3, 'Cuerpo/Mente', '#3F51B5', NOW());


-- Insertar datos en la tabla INTENSIDAD
-- Aqui estamos insertando las posibles intensidades que puede tener una clase
INSERT INTO INTENSIDAD (ID, VALUE, COLOR, FECHA_CREACION)
VALUES
(1, 'Baja', '#8BC34A', NOW()),
(2, 'Media', '#FFC107', NOW()),
(3, 'Media-Alta', '#FFC107', NOW()),
(4, 'Alta', '#F44336', NOW());


-- Insertar datos en la tabla CALENDARIO
-- Aqui estamos insertando por defecto el calendario que siempre usaremos para las clases, de momento solo habrá un calendario
INSERT INTO CALENDARIO (ID, NOMBRE, DESCRIPCION, FECHA_CREACION, FECHA_MODIFICACION) VALUES
(1, 'CALENDARIO POR DEFECTO', 'ESTE ES EL CALENDARIO POR DEFECTO', NOW(), NOW());

-- Insertar datos en la tabla ESTANCIA
-- Aquí estamos insertando las estancias que tendremos en el Gym, de momento solo usaremos estas
INSERT INTO ESTANCIA (ID, NOMBRE, FECHA_CREACION, FECHA_MODIFICACION) VALUES
(1, 'Primera sala', NOW(), NOW()),
(2, 'Segunda sala', NOW(), NOW());

-- Insertar datos en la tabla ESTADO
-- Aqui estamos insertando los estados que tendran tanto los usuarios como las reservas
INSERT INTO ESTADO (ID, TIPO, NAME, FECHA_CREACION) VALUES
(1, 'CLIENTE', 'ACTIVO', NOW()),
(2, 'CLIENTE', 'BAJA', NOW()),
(3, 'CLIENTE', 'USUARIO NO ACTIVO', NOW()),
(4, 'RESERVA', 'INSCRITO', NOW()),
(5, 'RESERVA', 'REALIZADO', NOW()),
(6, 'RESERVA', 'CANCELADO', NOW()),
(7, 'RESERVA', 'EN COLA', NOW());

-- Insertar datos en la tabla SUSCRIPCION
-- Aqui insertaremos las suscripciones que utilizaremos en el gym y que los usuarios podran inscribirse
INSERT INTO SUSCRIPCION (ID, NOMBRE, DESCRIPCION, ACTIVO, FECHA_CREACION, FECHA_MODIFICACION) VALUES
(1, 'Plan premium', '1. Acceso a todas las clases (podrás reservar una clase y al finalizar tendrás acceso a otra reserva del mismo día) \n2. Plan de alimentación básico que se actualizará cada 3 meses \n3. +Más taller de postura', TRUE, CURRENT_DATE, CURRENT_DATE),
(2, 'Plan matutino', '1. Acceso a todas las clases en la mañana (podrás reservar una clase y al finalizar tendrás acceso a otra reserva matutina del mismo día) \n2. +Plan de alimentación básico que se actualizará cada 3 meses \n3. Más taller de postura', TRUE, CURRENT_DATE, CURRENT_DATE),
(3, 'Plan 3 sesiones a la semana', 'Acceso a cualquier hora 3 sesiones a la semana', TRUE, CURRENT_DATE, CURRENT_DATE),
(4, 'Plan estudiantil', '1. No podrás acceder a la franja horaria marcado en color gris \n2. Acceso a taller de postura', TRUE, CURRENT_DATE, CURRENT_DATE),
(5, 'Plan corporativo', 'No podrás acceder a la franja horaria marcado en color gris', TRUE, CURRENT_DATE, CURRENT_DATE);

-- Configuracion de suscripcion
-- Aqui insertamos las configuraciones que tendra cada suscripcion, esta configuracion definira que reglas se aplicara a cada cliente al momento de, por ejemplo
-- inscribirse en una clase
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
-- Aqui estamos insertando todas las configuraciones generales de la aplicacion, por ejemplo, la aplicacion funcionnara con franjas horarias, entonces te permitira
-- definir franjas horarias para poder acceder a ciertas clases o no dependiendo de tu suscripcion 
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


-- Clases
-- Aqui insertamos las clases por defecto.

-- Bodypump
INSERT INTO CLASE (ID, NOMBRE, DESCRIPCION, FECHA_CREACION, FECHA_MODIFICACION, ESTADO, AFORO_MAX, ID_INTENSIDAD, COLOR, ID_TIPO_CLASE, ID_DURACION)
VALUES 
(1, 'Bodypump', 
'Es un entrenamiento de fuerza donde involucramos todos los músculos de nuestro cuerpo, la música y el monitor nos guiarán a controlar los tiempos de trabajo en cada track. Usaremos barras, discos y step.',
NOW(), NOW(), TRUE, 25, 3, '#FFC107', 2, 6);

-- Train Now
INSERT INTO CLASE (ID, NOMBRE, DESCRIPCION, FECHA_CREACION, FECHA_MODIFICACION, ESTADO, AFORO_MAX, ID_INTENSIDAD, COLOR, ID_TIPO_CLASE, ID_DURACION)
VALUES 
(2, 'Train Now', 
'Nuestro programa de entrenamiento metabólico, basado en acondicionamiento y fuerza acompañado de buena música, te guiaremos durante tu sesión enfocándonos en tu postura, ejecución y mejora.',
NOW(), NOW(), TRUE, 20, 3, '#FFC107', 2, 6);

-- Body Balance
INSERT INTO CLASE (ID, NOMBRE, DESCRIPCION, FECHA_CREACION, FECHA_MODIFICACION, ESTADO, AFORO_MAX, ID_INTENSIDAD, COLOR, ID_TIPO_CLASE, ID_DURACION)
VALUES 
(3, 'Body Balance', 
'Es un programa de entrenamiento inspirado en el yoga, pilates y tai chi, la unión de estas 3 disciplinas nos conduce a un estado de equilibrio físico y mental. Conectaras con tu ser interior (meditación incluida)',
NOW(), NOW(), TRUE, 15, 2, '#4CAF50', 1, 6);

-- Pilates
INSERT INTO CLASE (ID, NOMBRE, DESCRIPCION, FECHA_CREACION, FECHA_MODIFICACION, ESTADO, AFORO_MAX, ID_INTENSIDAD, COLOR, ID_TIPO_CLASE, ID_DURACION)
VALUES 
(4, 'Pilates', 
'Es un entrenamiento físico y mental, controlado por la respiración, donde trabajaremos de manera consciente para fortalecer la musculatura, el equilibrio y firmeza a la columna vertebral.',
NOW(), NOW(), TRUE, 15, 1, '#8BC34A', 1, 3);

-- Bodycombat
INSERT INTO CLASE (ID, NOMBRE, DESCRIPCION, FECHA_CREACION, FECHA_MODIFICACION, ESTADO, AFORO_MAX, ID_INTENSIDAD, COLOR, ID_TIPO_CLASE, ID_DURACION)
VALUES 
(5, 'Bodycombat', 
'Es un programa de cardio inspirado en las artes marciales, realizando movimientos de boxeo, karate, Muay thai, Kick Boxing, Capoeira, Kung fu, taekwondo.',
NOW(), NOW(), TRUE, 20, 3, '#F44336', 3, 6);

-- Cross Training
INSERT INTO CLASE (ID, NOMBRE, DESCRIPCION, FECHA_CREACION, FECHA_MODIFICACION, ESTADO, AFORO_MAX, ID_INTENSIDAD, COLOR, ID_TIPO_CLASE, ID_DURACION)
VALUES 
(6, 'Cross Training', 
'Es un entrenamiento donde trabajarás todas tus capacidades físicas, combinando la fuerza, resistencia, velocidad, agilidad, coordinación y potencia.',
NOW(), NOW(), TRUE, 20, 3, '#FF9800', 3, 3);

	
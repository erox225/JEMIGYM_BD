USE FUNCTIONALGYM;

-- Insertar datos en la tabla USUARIO para entrenadores y clientes
INSERT INTO USUARIO (IX, USERNAME, PASSWORD, ROL, FECHA_CREACION, FECHA_MODIFICACION, ACTIVO) VALUES
('U000001', 'trainer1', 'password1', 1, NOW(), NOW(), TRUE),
('U000002', 'trainer2', 'password2', 1, NOW(), NOW(), TRUE),
('U000003', 'client1', 'password3', 2, NOW(), NOW(), TRUE),
('U000004', 'client2', 'password4', 2, NOW(), NOW(), TRUE),
('U000005', 'client3', 'password5', 2, NOW(), NOW(), TRUE),
('U000006', 'client4', 'password6', 2, NOW(), NOW(), TRUE),
('U000007', 'client5', 'password7', 2, NOW(), NOW(), TRUE),
('U000008', 'client6', 'password8', 2, NOW(), NOW(), TRUE),
('U000009', 'client7', 'password9', 2, NOW(), NOW(), TRUE),
('U000010', 'client8', 'password10', 2, NOW(), NOW(), TRUE),
('U000011', 'client9', 'password11', 2, NOW(), NOW(), TRUE),
('U000012', 'client10', 'password12', 2, NOW(), NOW(), TRUE);

-- Insertar datos en la tabla PERSONA para entrenadores y clientes
INSERT INTO PERSONA (NOMBRE, TIPO_PERSONA, APELLIDOS, FECHA_NACIMIENTO, TELEFONO, FECHA_CREACION, FECHA_MODIFICACION, IX_USUARIO) VALUES
('John', 1, 'Doe', '1980-01-01', '123456789', NOW(), NOW(), 'U000001'),
('Jane', 1, 'Smith', '1985-02-02', '987654321', NOW(), NOW(), 'U000002'),
('Client', 2, 'One', '1990-03-03', '111222333', NOW(), NOW(), 'U000003'),
('Client', 2, 'Two', '1991-04-04', '444555666', NOW(), NOW(), 'U000004'),
('Client', 2, 'Three', '1992-05-05', '777888999', NOW(), NOW(), 'U000005'),
('Client', 2, 'Four', '1993-06-06', '000111222', NOW(), NOW(), 'U000006'),
('Client', 2, 'Five', '1994-07-07', '333444555', NOW(), NOW(), 'U000007'),
('Client', 2, 'Six', '1995-08-08', '666777888', NOW(), NOW(), 'U000008'),
('Client', 2, 'Seven', '1996-09-09', '999000111', NOW(), NOW(), 'U000009'),
('Client', 2, 'Eight', '1997-10-10', '222333444', NOW(), NOW(), 'U000010'),
('Client', 2, 'Nine', '1998-11-11', '555666777', NOW(), NOW(), 'U000011'),
('Client', 2, 'Ten', '1999-12-12', '888999000', NOW(), NOW(), 'U000012');

-- Insertar datos en la tabla CLASE
INSERT INTO CLASE (ID, NOMBRE, DESCRIPCION, FECHA_CREACION, FECHA_MODIFICACION, ESTADO, AFORO_MAX) VALUES
(1, 'Yoga', 'Clase de yoga', NOW(), NOW(), TRUE, 20),
(2, 'Pilates', 'Clase de pilates', NOW(), NOW(), TRUE, 15),
(3, 'Spinning', 'Clase de spinning', NOW(), NOW(), TRUE, 25),
(4, 'Zumba', 'Clase de zumba', NOW(), NOW(), TRUE, 30),
(5, 'HIIT', 'Clase de HIIT', NOW(), NOW(), TRUE, 10);

-- Insertar datos en la tabla PLANIFICACION
INSERT INTO PLANIFICACION (FECHA_MODIFICACION, ID_CLASE, ID_CALENDARIO, ID_PERSONA, ID_ESTANCIA, DIA_EJECUCION, HORA_INICIO, HORA_FIN, ESTADO, MOSTRAR, PERMANENTE) VALUES
(NOW(), 1, 1, 1, 1, '2024-06-20', '09:00', '10:00', TRUE, TRUE, FALSE),
(NOW(), 2, 1, 2, 1, '2024-06-20', '10:00', '11:00', TRUE, TRUE, FALSE),
(NOW(), 3, 1, 1, 1, '2024-06-21', '09:00', '10:00', TRUE, TRUE, FALSE),
(NOW(), 4, 1, 2, 1, '2024-06-21', '10:00', '11:00', TRUE, TRUE, FALSE),
(NOW(), 5, 1, 1, 1, '2024-06-22', '09:00', '10:00', TRUE, TRUE, FALSE);

-- Insertar datos en la tabla RESERVA
INSERT INTO RESERVA (FECHA_CREACION, FECHA_MODIFICACION, ID_CLIENTE, ID_PLANIFICACION) VALUES
(NOW(), NOW(), 3, 1),
(NOW(), NOW(), 4, 1),
(NOW(), NOW(), 5, 2),
(NOW(), NOW(), 6, 2),
(NOW(), NOW(), 7, 3),
(NOW(), NOW(), 8, 3),
(NOW(), NOW(), 9, 4),
(NOW(), NOW(), 10, 4),
(NOW(), NOW(), 11, 5),
(NOW(), NOW(), 12, 5);

-- Insertar datos en la tabla RESERVA_ESTADOS
INSERT INTO RESERVA_ESTADOS (ID_RESERVA, ID_ESTADO, FECHA_CREACION) VALUES
(1, 5, NOW()),
(1, 8, NOW()),
(2, 8, NOW()),
(2, 5, NOW()),
(2, 6, NOW()),
(3, 8, NOW()),
(3, 5, NOW()),
(3, 7, NOW()),
(4, 8, NOW()),
(4, 7, NOW()),
(5, 5, NOW()),
(6, 5, NOW()),
(7, 5, NOW()),
(8, 5, NOW()),
(9, 5, NOW()),
(10, 5, NOW());

-- Insertar datos en la tabla QR
INSERT INTO QR (QR_VALUE, FECHA_CREACION_MILISEGUNDOS, IX_USUARIO, ID_RESERVA, ESTADO) VALUES
('QR123456', UNIX_TIMESTAMP(NOW()) * 1000, 'U000003', 1, TRUE),
('QR234567', UNIX_TIMESTAMP(NOW()) * 1000, 'U000004', 2, TRUE),
('QR345678', UNIX_TIMESTAMP(NOW()) * 1000, 'U000005', 3, TRUE),
('QR456789', UNIX_TIMESTAMP(NOW()) * 1000, 'U000006', 4, TRUE),
('QR567890', UNIX_TIMESTAMP(NOW()) * 1000, 'U000007', 5, TRUE),
('QR678901', UNIX_TIMESTAMP(NOW()) * 1000, 'U000008', 6, TRUE),
('QR789012', UNIX_TIMESTAMP(NOW()) * 1000, 'U000009', 7, TRUE),
('QR890123', UNIX_TIMESTAMP(NOW()) * 1000, 'U000010', 8, TRUE),
('QR901234', UNIX_TIMESTAMP(NOW()) * 1000, 'U000011', 9, TRUE),
('QR012345', UNIX_TIMESTAMP(NOW()) * 1000, 'U000012', 10, FALSE);

-- Insertar datos en la tabla QR para reservas adicionales
INSERT INTO QR (QR_VALUE, FECHA_CREACION_MILISEGUNDOS, IX_USUARIO, ID_RESERVA, ESTADO) VALUES
('QR678901', UNIX_TIMESTAMP(NOW()) * 1000, 'U000003', 1, FALSE),
('QR789012', UNIX_TIMESTAMP(NOW()) * 1000, 'U000004', 2, FALSE),
('QR890123', UNIX_TIMESTAMP(NOW()) * 1000, 'U000005', 3, FALSE),
('QR901234', UNIX_TIMESTAMP(NOW()) * 1000, 'U000006', 4, FALSE),
('QR012345', UNIX_TIMESTAMP(NOW()) * 1000, 'U000007', 5, FALSE),
('QR123456', UNIX_TIMESTAMP(NOW()) * 1000, 'U000008', 6, FALSE),
('QR234567', UNIX_TIMESTAMP(NOW()) * 1000, 'U000009', 7, FALSE),
('QR345678', UNIX_TIMESTAMP(NOW()) * 1000, 'U000010', 8, FALSE),
('QR456789', UNIX_TIMESTAMP(NOW()) * 1000, 'U000011', 9, FALSE),
('QR567890', UNIX_TIMESTAMP(NOW()) * 1000, 'U000012', 10, TRUE);


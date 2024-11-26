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

INSERT INTO ESTADO_CLIENTE (ID_ESTADO, ID_CLIENTE, MOTIVO, FECHA_CREACION) VALUES
((SELECT ID FROM ESTADO WHERE NAME = 'ACTIVO'), (SELECT ID FROM USUARIO WHERE USERNAME = 'client1'), 101, NOW()), -- Cliente 3 con estado 1 y motivo 101
((SELECT ID FROM ESTADO WHERE NAME = 'ACTIVO'), (SELECT ID FROM USUARIO WHERE USERNAME = 'client2'), 102, NOW()), -- Cliente 4 con estado 2 y motivo 102
((SELECT ID FROM ESTADO WHERE NAME = 'ACTIVO'), (SELECT ID FROM USUARIO WHERE USERNAME = 'client3'), 103, NOW()), -- Cliente 5 con estado 3 y motivo 103
((SELECT ID FROM ESTADO WHERE NAME = 'ACTIVO'), (SELECT ID FROM USUARIO WHERE USERNAME = 'client4'), 104, NOW()), -- Cliente 6 con estado 1 y motivo 104
((SELECT ID FROM ESTADO WHERE NAME = 'ACTIVO'), (SELECT ID FROM USUARIO WHERE USERNAME = 'client5'), 105, NOW()), -- Cliente 7 con estado 2 y motivo 105
((SELECT ID FROM ESTADO WHERE NAME = 'ACTIVO'), (SELECT ID FROM USUARIO WHERE USERNAME = 'client6'), 106, NOW()), -- Cliente 8 con estado 3 y motivo 106
((SELECT ID FROM ESTADO WHERE NAME = 'ACTIVO'), (SELECT ID FROM USUARIO WHERE USERNAME = 'client7'), 107, NOW()), -- Cliente 9 con estado 1 y motivo 107
((SELECT ID FROM ESTADO WHERE NAME = 'ACTIVO'), (SELECT ID FROM USUARIO WHERE USERNAME = 'client8'), 108, NOW()), -- Cliente 10 con estado 2 y motivo 108
((SELECT ID FROM ESTADO WHERE NAME = 'ACTIVO'), (SELECT ID FROM USUARIO WHERE USERNAME = 'client9'), 109, NOW()), -- Cliente 11 con estado 3 y motivo 109
((SELECT ID FROM ESTADO WHERE NAME = 'ACTIVO'), (SELECT ID FROM USUARIO WHERE USERNAME = 'client10'), 110, NOW()); -- Cliente 12 con estado 1 y motivo 110

-- Insertar datos en la tabla PERSONA con estructura extendida
INSERT INTO PERSONA (NOMBRE, TIPO_PERSONA, APELLIDOS, FECHA_NACIMIENTO, TELEFONO, FECHA_CREACION, FECHA_MODIFICACION, EMAIL, DESCRIPCION, IMAGENURL, IX_USUARIO) VALUES
('John', 1, 'Doe', '1980-01-01', '123456789', NOW(), NOW(), 'john.doe@example.com', 'Entrenador con experiencia en fuerza y acondicionamiento físico', 'https://example.com/images/john_doe.jpg', 'U000001'),
('Jane', 1, 'Smith', '1985-02-02', '987654321', NOW(), NOW(), 'jane.smith@example.com', 'Entrenadora especializada en pilates y yoga', 'https://example.com/images/jane_smith.jpg', 'U000002'),
('Client', 2, 'One', '1990-03-03', '111222333', NOW(), NOW(), 'client.one@example.com', 'Cliente habitual interesado en clases de cardio', 'https://example.com/images/client_one.jpg', 'U000003'),
('Client', 2, 'Two', '1991-04-04', '444555666', NOW(), NOW(), 'client.two@example.com', 'Cliente nuevo que busca mejorar su flexibilidad', 'https://example.com/images/client_two.jpg', 'U000004'),
('Client', 2, 'Three', '1992-05-05', '777888999', NOW(), NOW(), 'client.three@example.com', 'Cliente que participa en clases de fuerza y resistencia', 'https://example.com/images/client_three.jpg', 'U000005'),
('Client', 2, 'Four', '1993-06-06', '000111222', NOW(), NOW(), 'client.four@example.com', 'Cliente enfocado en entrenamiento metabólico', 'https://example.com/images/client_four.jpg', 'U000006'),
('Client', 2, 'Five', '1994-07-07', '333444555', NOW(), NOW(), 'client.five@example.com', 'Cliente interesado en yoga y meditación', 'https://example.com/images/client_five.jpg', 'U000007'),
('Client', 2, 'Six', '1995-08-08', '666777888', NOW(), NOW(), 'client.six@example.com', 'Cliente nuevo explorando opciones de entrenamiento funcional', 'https://example.com/images/client_six.jpg', 'U000008'),
('Client', 2, 'Seven', '1996-09-09', '999000111', NOW(), NOW(), 'client.seven@example.com', 'Cliente frecuente en clases de pilates', 'https://example.com/images/client_seven.jpg', 'U000009'),
('Client', 2, 'Eight', '1997-10-10', '222333444', NOW(), NOW(), 'client.eight@example.com', 'Cliente regular en entrenamientos grupales', 'https://example.com/images/client_eight.jpg', 'U000010'),
('Client', 2, 'Nine', '1998-11-11', '555666777', NOW(), NOW(), 'client.nine@example.com', 'Cliente que busca mejorar su resistencia cardiovascular', 'https://example.com/images/client_nine.jpg', 'U000011'),
('Client', 2, 'Ten', '1999-12-12', '888999000', NOW(), NOW(), 'client.ten@example.com', 'Cliente activo en actividades de alta intensidad', 'https://example.com/images/client_ten.jpg', 'U000012');


-- Insertar datos en la tabla PLANIFICACION
INSERT INTO PLANIFICACION (ID, FECHA_MODIFICACION, FECHA_CREACION, ID_CLASE, ID_CALENDARIO, ID_ENTRENADOR, ID_ESTANCIA, DIA_EJECUCION, HORA_INICIO, ESTADO, MOSTRAR, PERMANENTE)
VALUES
(1, NOW(), NOW(), 1, 1, (SELECT ID FROM USUARIO WHERE USERNAME = 'trainer1') , 1, '2024-06-20', '09:00', TRUE, TRUE, FALSE),
(2, NOW(), NOW(), 2, 1, (SELECT ID FROM USUARIO WHERE USERNAME = 'trainer2') , 1, '2024-06-20', '10:00', TRUE, TRUE, FALSE),
(3, NOW(), NOW(), 3, 1, (SELECT ID FROM USUARIO WHERE USERNAME = 'trainer1') , 1, '2024-06-21', '09:00', TRUE, FALSE, TRUE),
(4, NOW(), NOW(), 4, 1, (SELECT ID FROM USUARIO WHERE USERNAME = 'trainer2') , 1, '2024-06-21', '10:00', TRUE, TRUE, FALSE),
(5, NOW(), NOW(), 5, 1, (SELECT ID FROM USUARIO WHERE USERNAME = 'trainer1') , 1, '2024-06-22', '09:00', TRUE, TRUE, FALSE);

-- Insertar datos en la tabla RESERVA
INSERT INTO RESERVA (ID, FECHA_CREACION, FECHA_MODIFICACION, ID_CLIENTE, ID_PLANIFICACION) VALUES
(1, NOW(), NOW(), (SELECT ID FROM USUARIO WHERE USERNAME = 'client1'), 1),
(2, NOW(), NOW(), (SELECT ID FROM USUARIO WHERE USERNAME = 'client2'), 1),
(3, NOW(), NOW(), (SELECT ID FROM USUARIO WHERE USERNAME = 'client3'), 2),
(4, NOW(), NOW(), (SELECT ID FROM USUARIO WHERE USERNAME = 'client4'), 2),
(5, NOW(), NOW(), (SELECT ID FROM USUARIO WHERE USERNAME = 'client5'), 3),
(6, NOW(), NOW(), (SELECT ID FROM USUARIO WHERE USERNAME = 'client6'), 3),
(7, NOW(), NOW(), (SELECT ID FROM USUARIO WHERE USERNAME = 'client7'), 4),
(8, NOW(), NOW(), (SELECT ID FROM USUARIO WHERE USERNAME = 'client8'), 4),
(9, NOW(), NOW(), (SELECT ID FROM USUARIO WHERE USERNAME = 'client9'), 5),
(10, NOW(), NOW(),(SELECT ID FROM USUARIO WHERE USERNAME = 'client10'), 5);

-- Insertar datos en la tabla RESERVA_ESTADOS
INSERT INTO RESERVA_ESTADOS (ID_RESERVA, ID_ESTADO, FECHA_CREACION) VALUES
(1, (SELECT ID FROM ESTADO WHERE NAME = 'INSCRITO'), NOW()),
(1, (SELECT ID FROM ESTADO WHERE NAME = 'REALIZADO'), NOW()),
(2, (SELECT ID FROM ESTADO WHERE NAME = 'CANCELADO'), NOW()),
(2, (SELECT ID FROM ESTADO WHERE NAME = 'EN COLA'), NOW()),
(2, (SELECT ID FROM ESTADO WHERE NAME = 'INSCRITO'), NOW()),
(3, (SELECT ID FROM ESTADO WHERE NAME = 'REALIZADO'), NOW()),
(3, (SELECT ID FROM ESTADO WHERE NAME = 'CANCELADO'), NOW()),
(3, (SELECT ID FROM ESTADO WHERE NAME = 'EN COLA'), NOW()),
(4, (SELECT ID FROM ESTADO WHERE NAME = 'INSCRITO'), NOW()),
(4, (SELECT ID FROM ESTADO WHERE NAME = 'REALIZADO'), NOW()),
(5, (SELECT ID FROM ESTADO WHERE NAME = 'CANCELADO'), NOW()),
(6, (SELECT ID FROM ESTADO WHERE NAME = 'EN COLA'), NOW()),
(7, (SELECT ID FROM ESTADO WHERE NAME = 'INSCRITO') , NOW()),
(8, (SELECT ID FROM ESTADO WHERE NAME = 'REALIZADO'), NOW()),
(9, (SELECT ID FROM ESTADO WHERE NAME = 'CANCELADO'), NOW()),
(10, (SELECT ID FROM ESTADO WHERE NAME = 'EN COLA'), NOW());

-- Insertar datos en la tabla QR
INSERT INTO QR (QR_VALUE, FECHA_CREACION, IX_USUARIO, ID_RESERVA, ESTADO) VALUES
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

-- Insertar suscripciones para cada cliente
INSERT INTO cliente_suscripcion (FECHA_CREACION, FECHA_MODIFICACION, ID_CLIENTE, ID_SUSCRIPCION, FECHA_INICIO, FECHA_FIN, ESTADO) VALUES
(NOW(), NOW(),(SELECT ID FROM USUARIO WHERE USERNAME = 'client1'), (SELECT ID FROM SUSCRIPCION WHERE NOMBRE = 'Plan premium'),NOW(), DATE_ADD(NOW(), INTERVAL 1 MONTH), 'ACTIVO'), -- Client1 -> Plan Premium
(NOW(), NOW(),(SELECT ID FROM USUARIO WHERE USERNAME = 'client2'), (SELECT ID FROM SUSCRIPCION WHERE NOMBRE = 'Plan matutino'),NOW(), DATE_ADD(NOW(), INTERVAL 1 MONTH), 'ACTIVO'), -- Client2 -> Plan Matutino
(NOW(), NOW(),(SELECT ID FROM USUARIO WHERE USERNAME = 'client3'), (SELECT ID FROM SUSCRIPCION WHERE NOMBRE = 'Plan 3 sesiones a la semana'),NOW(), DATE_ADD(NOW(), INTERVAL 1 MONTH), 'ACTIVO'), -- Client3 -> Plan 3 sesiones a la semana
(NOW(), NOW(),(SELECT ID FROM USUARIO WHERE USERNAME = 'client4'), (SELECT ID FROM SUSCRIPCION WHERE NOMBRE = 'Plan Estudiantil'),NOW(), DATE_ADD(NOW(), INTERVAL 1 MONTH), 'ACTIVO'), -- Client4 -> Plan Estudiantil
(NOW(), NOW(),(SELECT ID FROM USUARIO WHERE USERNAME = 'client5'), (SELECT ID FROM SUSCRIPCION WHERE NOMBRE = 'Plan Corporativo'),NOW(), DATE_ADD(NOW(), INTERVAL 1 MONTH), 'ACTIVO'), -- Client5 -> Plan Corporativo
(NOW(), NOW(),(SELECT ID FROM USUARIO WHERE USERNAME = 'client6'), (SELECT ID FROM SUSCRIPCION WHERE NOMBRE = 'Plan premium'),NOW(), DATE_ADD(NOW(), INTERVAL 1 MONTH), 'ACTIVO'), -- Client6 -> Plan Premium
(NOW(), NOW(),(SELECT ID FROM USUARIO WHERE USERNAME = 'client7'), (SELECT ID FROM SUSCRIPCION WHERE NOMBRE = 'Plan Matutino'),NOW(), DATE_ADD(NOW(), INTERVAL 1 MONTH), 'ACTIVO'), -- Client7 -> Plan Matutino
(NOW(), NOW(),(SELECT ID FROM USUARIO WHERE USERNAME = 'client8'), (SELECT ID FROM SUSCRIPCION WHERE NOMBRE = 'Plan 3 sesiones a la semana'),NOW(), DATE_ADD(NOW(), INTERVAL 1 MONTH), 'ACTIVO'), -- Client8 -> Plan 3 sesiones a la semana
(NOW(), NOW(),(SELECT ID FROM USUARIO WHERE USERNAME = 'client9'), (SELECT ID FROM SUSCRIPCION WHERE NOMBRE = 'Plan Estudiantil'),NOW(), DATE_ADD(NOW(), INTERVAL 1 MONTH), 'ACTIVO'), -- Client9 -> Plan Estudiantil
(NOW(), NOW(),(SELECT ID FROM USUARIO WHERE USERNAME = 'client10'),(SELECT ID FROM SUSCRIPCION WHERE NOMBRE = 'Plan Corporativo'), NOW(), DATE_ADD(NOW(), INTERVAL 1 MONTH), 'ACTIVO'); -- Client10 -> Plan Corporativo





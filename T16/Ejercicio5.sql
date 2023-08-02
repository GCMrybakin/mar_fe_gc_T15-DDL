CREATE TABLE facultad (
    codigo INT PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE equipos (
    numserie CHAR(4) PRIMARY KEY,
    nombre VARCHAR(100),
    facultad INT,
    FOREIGN KEY (facultad) REFERENCES facultad(codigo)
);

CREATE TABLE investigadores (
    DNI VARCHAR(8) PRIMARY KEY,
    nomapellidos VARCHAR(100),
    facultad INT,
    FOREIGN KEY (facultad) REFERENCES facultad(codigo)
);

CREATE TABLE reserva (
    DNI VARCHAR(8),
    NumSerie CHAR(4),
    comienzo DATETIME,
    fin DATETIME,
    PRIMARY KEY (DNI, NumSerie),
    FOREIGN KEY (DNI) REFERENCES investigadores(DNI),
    FOREIGN KEY (NumSerie) REFERENCES equipos(numserie)
);

INSERT INTO facultad (codigo, nombre) VALUES
(1, 'Facultad de Ingeniería'),
(2, 'Facultad de Ciencias Sociales'),
(3, 'Facultad de Medicina'),
(4, 'Facultad de Artes'),
(5, 'Facultad de Ciencias Naturales'),
(6, 'Facultad de Economía'),
(7, 'Facultad de Derecho');

INSERT INTO equipos (numserie, nombre, facultad) VALUES
('A001', 'Equipo A001', 1),
('B002', 'Equipo B002', 2),
('C003', 'Equipo C003', 3),
('D004', 'Equipo D004', 2),
('E005', 'Equipo E005', 1),
('F006', 'Equipo F006', 3),
('G007', 'Equipo G007', 4);

INSERT INTO investigadores (DNI, nomapellidos, facultad) VALUES
('5231767A', 'Juan Pérez', 1),
('8765432B', 'María Rodríguez', 2),
('9876543C', 'Carlos Gómez', 3),
('5432167D', 'Ana López', 2),
('8265411E', 'Pedro Ramírez', 1),
('3214567F', 'Luisa Martínez', 3);

INSERT INTO reserva (DNI, NumSerie, comienzo, fin) VALUES
('5231767A', 'A001', '2023-08-02 09:00:00', '2023-08-02 12:00:00'),
('8765432B', 'B002', '2023-08-03 10:30:00', '2023-08-03 13:30:00'),
('9876543C', 'C003', '2023-08-04 14:00:00', '2023-08-04 17:00:00'),
('5231767A', 'D004', '2023-08-05 16:45:00', '2023-08-05 18:45:00'),
('8265411E', 'E005', '2023-08-06 08:00:00', '2023-08-06 12:00:00'),
('5432167D', 'F006', '2023-08-07 09:30:00', '2023-08-07 11:30:00'),
('3214567F', 'G007', '2023-08-08 13:15:00', '2023-08-08 15:15:00');

UPDATE facultad SET nombre = 'Facultad de Ciencias Exactas' WHERE codigo = 5;
UPDATE equipos SET nombre = 'Nuevo Equipo' WHERE numserie = 'D004';
UPDATE investigadores SET nomapellidos = 'Luis García' WHERE DNI = '5231767A';

DELETE FROM facultad WHERE codigo = 6;
DELETE FROM reserva WHERE NumSerie = 'F006';
DELETE FROM equipos WHERE numserie = 'F006';
DELETE FROM reserva WHERE DNI = '8265411E';
DELETE FROM investigadores WHERE DNI = '8265411E';
DELETE FROM reserva WHERE DNI = '8265411E' AND NumSerie = 'E005';

SELECT * FROM facultad;
SELECT * FROM equipos;
SELECT * FROM investigadores;
SELECT * FROM reserva;

CREATE TABLE piezas (
    Codigo INT PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE Proveedores (
    id CHAR(4) PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE Suministra (
    CodigoPieza INT,
    IdProveedor CHAR(4),
    precio INT,
    PRIMARY KEY (CodigoPieza, IdProveedor),
    FOREIGN KEY (CodigoPieza) REFERENCES piezas(Codigo),
    FOREIGN KEY (IdProveedor) REFERENCES Proveedores(id)
);

INSERT INTO piezas (Codigo, nombre) VALUES
(1, 'Pieza A'),
(2, 'Pieza B'),
(3, 'Pieza C'),
(4, 'Pieza D'),
(5, 'Pieza E'),
(6, 'Pieza F'),
(7, 'Pieza G'),
(8, 'Pieza H');

INSERT INTO Proveedores (id, nombre) VALUES
('P001', 'Proveedor 1'),
('P002', 'Proveedor 2'),
('P003', 'Proveedor 3'),
('P004', 'Proveedor 4'),
('P005', 'Proveedor 5'),
('P006', 'Proveedor 6'),
('P007', 'Proveedor 7'),
('P008', 'Proveedor 8');

INSERT INTO Suministra (CodigoPieza, IdProveedor, precio) VALUES
(1, 'P001', 100),
(1, 'P002', 120),
(2, 'P002', 90),
(3, 'P003', 150),
(3, 'P001', 135),
(4, 'P004', 200),
(4, 'P005', 180),
(5, 'P005', 250),
(6, 'P006', 300),
(6, 'P004', 280),
(7, 'P007', 150),
(8, 'P008', 170);

UPDATE piezas
SET nombre = 'Pieza Especial B'
WHERE Codigo = 2;

UPDATE Proveedores
SET nombre = 'Proveedor Y'
WHERE id = 'P002';

UPDATE Suministra
SET precio = 115
WHERE CodigoPieza = 1 AND IdProveedor = 'P001';

DELETE FROM Suministra WHERE CodigoPieza = 3;
DELETE FROM piezas WHERE Codigo = 3;

SELECT * FROM piezas;
SELECT * FROM Proveedores;
SELECT * FROM Suministra;

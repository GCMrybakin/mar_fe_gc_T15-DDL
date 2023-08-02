CREATE TABLE productos (
    Codigo INT PRIMARY KEY,
    nombre VARCHAR(100),
    precio DECIMAL(10, 2)
);

CREATE TABLE cajeros (
    Codigo INT PRIMARY KEY,
    nombreApellidos VARCHAR(100)
);

CREATE TABLE Maquinas_Regis (
    Codigo INT PRIMARY KEY,
    piso INT
);

CREATE TABLE Venta (
    Cajero INT,
    Maquina INT,
    Producto INT,
    PRIMARY KEY (Cajero, Maquina, Producto),
    FOREIGN KEY (Cajero) REFERENCES cajeros(Codigo),
    FOREIGN KEY (Maquina) REFERENCES Maquinas_Regis(Codigo),
    FOREIGN KEY (Producto) REFERENCES productos(Codigo)
);

INSERT INTO productos (Codigo, nombre, precio) VALUES
(1, 'Camisa', 25.99),
(2, 'Pantalón', 39.99),
(3, 'Zapatos', 49.50),
(4, 'Sombrero', 15.75);

INSERT INTO cajeros (Codigo, nombreApellidos) VALUES
(101, 'Harry Meador'),
(102, 'Kendra Carter'),
(103, 'Tommy Reed'),
(104, 'Susan Medina');

INSERT INTO Maquinas_Regis (Codigo, piso) VALUES
(501, 5),
(502, 4),
(503, 3),
(504, 2);

INSERT INTO Venta (Cajero, Maquina, Producto) VALUES
(101, 501, 1),
(102, 503, 2),
(103, 502, 3),
(104, 504, 4);

UPDATE productos SET precio = 29.99 WHERE Codigo = 1;
UPDATE cajeros SET nombreApellidos = 'Linda Johnson' WHERE Codigo = 102;
UPDATE Maquinas_Regis SET piso = 1 WHERE Codigo = 504;

DELETE FROM productos WHERE Codigo = 4;
DELETE FROM cajeros WHERE Codigo = 103;
DELETE FROM Maquinas_Regis WHERE Codigo = 503;

SELECT * FROM productos;
SELECT * FROM cajeros;
SELECT * FROM Maquinas_Regis;
SELECT * FROM Venta;

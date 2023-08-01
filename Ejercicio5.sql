CREATE TABLE almacenes (
    Codigo INT PRIMARY KEY,
    lugar VARCHAR(100),
    capacidad INT
);

CREATE TABLE Cajas (
    NumReferencia CHAR(5) PRIMARY KEY,
    contenido VARCHAR(100),
    valor INT,
    almacen INT,
    FOREIGN KEY (almacen) REFERENCES almacenes(Codigo)
);

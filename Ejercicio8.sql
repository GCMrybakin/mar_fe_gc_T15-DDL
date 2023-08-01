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

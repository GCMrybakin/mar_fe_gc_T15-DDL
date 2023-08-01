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

CREATE TABLE Fabricantes (
    Codigo INT PRIMARY KEY,
    Nombre VARCHAR(100)
);

CREATE TABLE Articulos (
    Codigo INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Precio DECIMAL(10, 2),
    Fabricante INT,
    FOREIGN KEY (Fabricante) REFERENCES Fabricantes(Codigo)
);

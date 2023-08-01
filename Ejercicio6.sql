CREATE TABLE salas (
    Codigo INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Pelicula INT,
    FOREIGN KEY (Pelicula) REFERENCES Peliculas(codigo)
);

CREATE TABLE Peliculas (
    codigo INT PRIMARY KEY,
    nombre VARCHAR(100),
    calificacionEdad INT
);

USE Ejercicio2UD15;
CREATE TABLE Toma (
    ClaveTema INT PRIMARY KEY,
    Nombre VARCHAR(50)
);

CREATE TABLE Autor (
    ClaveAutor INT PRIMARY KEY,
    Nombre VARCHAR(50)
);

CREATE TABLE Editorial (
    ClaveEditorial INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Direccion VARCHAR(50),
    Telefono VARCHAR(20)
);


CREATE TABLE Libro (
    ClaveLibro INT PRIMARY KEY,
    Titulo VARCHAR(50),
    Idioma VARCHAR(25),
    Formato VARCHAR(30),
    ClaveEditorial INT,
    FOREIGN KEY (ClaveEditorial) REFERENCES Editorial(ClaveEditorial)
);

CREATE TABLE Ejemplar (
    ClaveEjemplar INT PRIMARY KEY,
    ClaveLibro INT,
    NumeroOrden INT,
    Edicion VARCHAR(50),
    Ubicacion VARCHAR(50),
    Categoria VARCHAR(50),
    FOREIGN KEY (ClaveLibro) REFERENCES Libro(ClaveLibro)
);

CREATE TABLE Socio (
    ClaveSocio INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Direccion VARCHAR(50),
    Telefono VARCHAR(20),
    Categoria VARCHAR(50)
);

CREATE TABLE Prestamo (
    ClaveSocio INT,
    ClaveEjemplar INT,
    NumeroOrden INT,
    Fecha_Prestamo DATE,
    Fecha_Devolucion DATE,
    Notas TEXT,
    PRIMARY KEY (ClaveSocio, ClaveEjemplar, NumeroOrden),
    FOREIGN KEY (ClaveSocio) REFERENCES Socio(ClaveSocio),
    FOREIGN KEY (ClaveEjemplar) REFERENCES Ejemplar(ClaveEjemplar)
);

CREATE TABLE Trata_sobre (
    ClaveLibro INT,
    ClaveTema INT,
    PRIMARY KEY (ClaveLibro, ClaveTema),
    FOREIGN KEY (ClaveLibro) REFERENCES Libro(ClaveLibro),
    FOREIGN KEY (ClaveTema) REFERENCES Toma(ClaveTema)
);

CREATE TABLE Escrito_por (
    ClaveLibro INT,
    ClaveAutor INT,
    PRIMARY KEY (ClaveLibro, ClaveAutor),
    FOREIGN KEY (ClaveLibro) REFERENCES Libro(ClaveLibro),
    FOREIGN KEY (ClaveAutor) REFERENCES Autor(ClaveAutor)
);

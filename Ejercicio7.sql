CREATE TABLE despachos (
    Numero INT PRIMARY KEY,
    capacidad INT
);

CREATE TABLE directores (
    DNI VARCHAR(8) PRIMARY KEY,
    NomApels VARCHAR(255),
    DNIFK VARCHAR(8),
    despacho INT,
    FOREIGN KEY (DNIFK) REFERENCES directores(DNI),
    FOREIGN KEY (despacho) REFERENCES despachos(Numero)
);

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

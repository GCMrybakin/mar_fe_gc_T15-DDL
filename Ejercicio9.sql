CREATE TABLE cientificos (
    DNI VARCHAR(8) PRIMARY KEY,
    nomapels VARCHAR(100)
);

CREATE TABLE proyecto (
    id CHAR(4) PRIMARY KEY,
    nombre VARCHAR(100),
    horas INT
);

CREATE TABLE asignado_a (
    Cientifico VARCHAR(8),
    Proyecto CHAR(4),
    PRIMARY KEY (Cientifico, Proyecto),
    FOREIGN KEY (Cientifico) REFERENCES cientificos(DNI),
    FOREIGN KEY (Proyecto) REFERENCES proyecto(id)
);


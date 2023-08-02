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

INSERT INTO despachos (Numero, capacidad) VALUES (1, 4);
INSERT INTO despachos (Numero, capacidad) VALUES (2, 3);
INSERT INTO despachos (Numero, capacidad) VALUES (3, 2);
INSERT INTO despachos (Numero, capacidad) VALUES (4, 5);
INSERT INTO despachos (Numero, capacidad) VALUES (5, 6);
INSERT INTO directores (DNI, NomApels, DNIFK, despacho) VALUES ('3265653A', 'Robert humphrey', NULL, 1);
INSERT INTO directores (DNI, NomApels, DNIFK, despacho) VALUES ('8765432B', 'Edward Offutt', '3265653A', 2);
INSERT INTO directores (DNI, NomApels, DNIFK, despacho) VALUES ('9876542C', 'Lucy Gilson', NULL, 3);
INSERT INTO directores (DNI, NomApels, DNIFK, despacho) VALUES ('5244827D', 'John Doe', NULL, 1);
INSERT INTO directores (DNI, NomApels, DNIFK, despacho) VALUES ('6236337F', 'Eve Roberts', '5244827D', 5);

UPDATE despachos SET capacidad = 6 WHERE Numero = 1;
UPDATE directores SET NomApels = 'Robert humphrey', despacho = 2 WHERE DNI = '12345678';

DELETE FROM directores WHERE despacho = 3;
DELETE FROM despachos WHERE Numero = 3;
DELETE FROM directores WHERE DNI = '9876542C';

SELECT * FROM despachos;
SELECT * FROM directores;

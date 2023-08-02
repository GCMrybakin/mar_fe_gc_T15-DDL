
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

INSERT INTO cientificos (DNI, nomapels) VALUES ('7254327A', 'Courtney Sutton');
INSERT INTO cientificos (DNI, nomapels) VALUES ('5356621B', 'Alice Simmons');
INSERT INTO cientificos (DNI, nomapels) VALUES ('4156641C', 'Maria Rains');

INSERT INTO proyecto (id, nombre, horas) VALUES ('P001', 'Projecto Marino', 100);
INSERT INTO proyecto (id, nombre, horas) VALUES ('P002', 'Projecto Animal', 50);
INSERT INTO proyecto (id, nombre, horas) VALUES ('P003', 'Projecto Plantas', 70);

INSERT INTO asignado_a (Cientifico, Proyecto) VALUES ('7254327A', 'P001');
INSERT INTO asignado_a (Cientifico, Proyecto) VALUES ('5356621B', 'P001');
INSERT INTO asignado_a (Cientifico, Proyecto) VALUES ('5356621B', 'P002');
INSERT INTO asignado_a (Cientifico, Proyecto) VALUES ('4156641C', 'P003');

UPDATE cientificos SET nomapels = 'Courtney Sutton' WHERE DNI = '12345678';
UPDATE proyecto SET nombre = 'Project BioMarino', horas = 200 WHERE id = 'P001';

DELETE FROM cientificos WHERE DNI = '5356621B';
DELETE FROM proyecto WHERE id = 'P002';

SELECT * FROM cientificos;
SELECT * FROM proyecto;
SELECT * FROM asignado_a;


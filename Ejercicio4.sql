CREATE TABLE Departamentos (
    codigo INT PRIMARY KEY,
    nombre VARCHAR(100),
    presupuesto DECIMAL(12, 2)
);

CREATE TABLE empleados (
    DNI VARCHAR(8) PRIMARY KEY,
    nombre VARCHAR(100),
    apellidos VARCHAR(100),
    departamento INT,
    FOREIGN KEY (departamento) REFERENCES Departamentos(codigo)
);

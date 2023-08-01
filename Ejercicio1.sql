CREATE DATABASE Ejercicio1UD15;
USE Ejercicio1UD15;

CREATE TABLE Estacion (
    Identificador INT PRIMARY KEY,
    Latitud DECIMAL(10, 6),
    Longitud DECIMAL(10, 6),
    Altitud INT
);

CREATE TABLE Muestra (
    IdentificadorEstacion INT,
    Fecha DATE,
    TemperaturaMinima DECIMAL(5, 2),
    TemperaturaMaxima DECIMAL(5, 2),
    Precipitaciones DECIMAL(6, 2),
    HumedadMinima DECIMAL(5, 2),
    HumedadMaxima DECIMAL(5, 2),
    VelocidadVientoMinima DECIMAL(6, 2),
    VelocidadVientoMaxima DECIMAL(6, 2),
    PRIMARY KEY (IdentificadorEstacion, Fecha),
    FOREIGN KEY (IdentificadorEstacion) REFERENCES Estacion(Identificador)
);

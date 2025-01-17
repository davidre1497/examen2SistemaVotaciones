CREATE DATABASE SistemaVotaciones;
GO

USE SistemaVotaciones;
GO

CREATE TABLE Partido (
    ID_Partido INT PRIMARY KEY IDENTITY,
    Nombre_Partido NVARCHAR(100) NOT NULL
);

CREATE TABLE Candidato (
    ID_Candidato INT PRIMARY KEY IDENTITY,
    Nombre NVARCHAR(100) NOT NULL,
    Cedula NVARCHAR(50) NOT NULL UNIQUE,
    Email NVARCHAR(100) NOT NULL,
    Direccion NVARCHAR(200) NOT NULL,
    ID_Partido INT NOT NULL,
    Plataforma NVARCHAR(MAX) NOT NULL,
    CONSTRAINT FK_Candidato_Partido FOREIGN KEY (ID_Partido) REFERENCES Partido(ID_Partido)
);

CREATE TABLE Voto (
    ID_Voto INT PRIMARY KEY IDENTITY,
    ID_Candidato INT NOT NULL,
    Fecha_Voto DATETIME NOT NULL,
    CONSTRAINT FK_Voto_Candidato FOREIGN KEY (ID_Candidato) REFERENCES Candidato(ID_Candidato)
);

CREATE TABLE Usuario (
    ID_Usuario INT PRIMARY KEY IDENTITY,
    Nombre NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NOT NULL UNIQUE,
    PasswordHash NVARCHAR(256) NOT NULL
);
GO

INSERT INTO USUARIO (EMAIL, CLAVE, NOMBRE, APELLIDO1)



select EMAIL, CLAVE, NOMBRE FROM USUARIO WHERE EMAIL=
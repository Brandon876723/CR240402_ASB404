CREATE DATABASE Control_Inscripciones;
USE Control_Inscripciones;

CREATE TABLE Alumno(
Carnet VARCHAR(10) NOT NULL,
Nombres VARCHAR(30)NOT NULL,
Apellidos VARCHAR(30) NOT NULL,
Direccion VARCHAR(50),
Correo VARCHAR(50),
Telefono INT,
Fecha_nacimiento DATE NOT NULL
);

CREATE TABLE Materia(
Codigo INT NOT NULL,
Nombre VARCHAR(30) NOT NULL,
Apellido VARCHAR(30),
Uv INT NOT NULL,
Prerrequisitos VARCHAR(50),
Ciclo INT NOT NULL
);

CREATE TABLE Inscripcion(
codigoMateria INT NOT NULL,
carnet VARCHAR(10) NOT NULL,
matricula INT NOT NULL
);

INSERT INTO Alumno VALUES('ssdfwe2', 'brandon', 'centeno', 'soyapango', 'tacos@gmail.com', 75159566, '2004-04-02'),
('jaljsdkldl', 'darwin', 'cervantes', 'ilopango', 'papas@gmail.com', 75159566, '2010-02-08');
SELECT * FROM Alumno;

INSERT INTO Materia VALUES(00326589, 'miguel', 'argento', 62, 'Haber pasado base 6 minimo', 02);
SELECT * FROM Materia;

INSERT INTO Inscripcion VALUES(00326599, 'aj202402', 000120);
SELECT * FROM Inscripcion;
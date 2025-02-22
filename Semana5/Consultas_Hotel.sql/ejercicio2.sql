CREATE DATABASE Hotel_SuCarnet;
USE Hotel_SuCarnet;

CREATE TABLE Hotel(
CodigoHotel INT PRIMARY KEY IDENTITY(1,1),
Nombre VARCHAR(30) NOT NULL,
Direccion VARCHAR(80),
SitioWeb VARCHAR(100),
CONSTRAINT UQ_Hotel_Nombre_SitioWeb UNIQUE (Nombre, SitioWeb),
);

CREATE TABLE Reservacion(
CodigoReserva INT PRIMARY KEY IDENTITY(1,1),
CodigoHotel INT NOT NULL,
CodigoHuesped INT NOT NULL,
CodigoHabitacion INT NOT NULL,
FechaInicio DATE NOT NULL DEFAULT (GETDATE()),
FechaFin DATE NOT NULL,
CONSTRAINT FK_Reservacion_Hotel FOREIGN KEY (CodigoHotel) REFERENCES Hotel(CodigoHotel)
);

CREATE TABLE Habitacion(
CodigoHabitacion INT NOT NULL,
CodigoHotel INT NOT NULL,
Tipo VARCHAR(35) NOT NULL,
Precio DECIMAL(8,2) NOT NULL,
CONSTRAINT CHK_Habitacion_Precio CHECK(Precio > 25),
CONSTRAINT CHK_Habitacion_Tipo CHECK (Tipo IN ('Doble', 'Individual')),
CONSTRAINT FK_Habitacion_Hotel FOREIGN KEY (CodigoHotel) REFERENCES Hotel(CodigoHotel),
);

CREATE TABLE Huesped(
CodigoHuesped INT NOT NULL,
Nombre VARCHAR(30) NOT NULL,
Email VARCHAR(50) UNIQUE,
Direccion VARCHAR(50),
Telefono INT NOT NULL,
);

SELECT * FROM Hotel;
SELECT * FROM Reservacion;
SELECT * FROM Habitacion;
SELECT * FROM Huesped;

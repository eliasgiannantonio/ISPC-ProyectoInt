CREATE database pruebab;
USE pruebab;
CREATE TABLE perros (
IdPerro INT NOT NULL,
Nombre VARCHAR (45) NULL,
Fecha_nac INT (25),
Sexo VARCHAR (25),
Dni_dueno INT (25),
constraint pk_pe PRIMARY KEY(IdPerro)
);
INSERT INTO perros (IdPerro) VALUES (10);
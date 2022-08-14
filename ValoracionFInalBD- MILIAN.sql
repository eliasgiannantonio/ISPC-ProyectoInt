drop database if exists ejercicio_peluqueria;

CREATE DATABASE ejercicio_peluqueria DEFAULT CHARSET utf8;
USE ejercicio_peluqueria;
CREATE TABLE Dueno (
DNI INT (15) NOT NULL  ,
Nombre VARCHAR (35) NOT NULL ,
Apellido VARCHAR (35) NOT NULL ,
Telefono VARCHAR (20) NOT NULL,
Direccion VARCHAR (50) NOT NULL ,
PRIMARY KEY (DNI)) CHARSET utf8;


CREATE TABLE Perro (
ID_Perro INT (10) NOT NULL AUTO_INCREMENT  ,
Nombre VARCHAR (30) NOT NULL ,
Fecha_nac DATE NOT NULL,
Sexo CHAR  NOT NULL,
DNI_dueno INT(10) NOT NULL,
PRIMARY KEY (ID_Perro) ,
CONSTRAINT DNI_dueno_fk
FOREIGN KEY (DNI_dueno) REFERENCES Dueno(DNI)
) CHARSET utf8;


CREATE TABLE Historial (
ID_Historial INT (10) NOT NULL AUTO_INCREMENT  ,
Fecha DATE NOT NULL,
Perro INT(10)  NOT NULL,
Descripcion VARCHAR(50) NOT NULL,
Monto DOUBLE NOT NULL,
PRIMARY KEY (ID_Historial) ,
CONSTRAINT  Perro_fk
FOREIGN KEY (Perro) REFERENCES Perro(ID_Perro)
) CHARSET utf8;

#Ejercicio1 
insert into dueno  
values (40813872, 'Jorge', 'Diaz', '123456', 'La Pampa 123');
insert into dueno  
values (40813972, 'Adrian', 'Perez', '123456', 'La Pampa 543');
insert into dueno  
values (30813872, 'Fabian', 'Altamirado', '123456', 'La Pampa 342');
insert into dueno  
values (34893572, 'Aldo', 'Juncos', '123456', 'Misiones 352');
insert into perro ( Nombre, Fecha_nac, Sexo, Dni_dueno)
values ( 'Minnie', '2017-12-05', 'Hembra', 1);
insert into perro ( Nombre, Fecha_nac, Sexo, Dni_dueno)
values ( 'Quiquito', '2017-10-07', 'Macho', 2);
insert into perro ( Nombre, Fecha_nac, Sexo, Dni_dueno)
values ( 'Hercules', '2022-01-18', 'Macho', 3);
insert into perro ( Nombre, Fecha_nac, Sexo, Dni_dueno)
values ( 'Ursula', '2012-04-28', 'Hembra', 4);
insert into historial ( Fecha, Perro, Descripcion, Monto)
values ('2019-07-07', 2 , 'Control', 1700);
insert into historial ( Fecha, Perro, Descripcion, Monto)
values ('2022-04-22', 3 , 'Vacuna', 1000);
insert into historial ( Fecha, Perro, Descripcion, Monto)
values ('2022-06-22', 3 , '2da Vacuna', 1000);
insert into historial ( Fecha, Perro, Descripcion, Monto)
values ('2018-11-04', 1 , 'Urgencia', 3700);
insert into historial ( Fecha, Perro, Descripcion, Monto)
values ('2022-08-02', 4 , 'Peluqueria', 7000)


#Ejercicio 11

SELECT Nombre,  TIMESTAMPDIFF(YEAR,Fecha_nac,CURDATE()) AS edad
     FROM perro
     where Sexo = 'M'
     AND TIMESTAMPDIFF(YEAR,Fecha_nac,CURDATE()) <5;

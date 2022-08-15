create database Perro;
 show databases;
 use Perro;
 CREATE Table Perro(
	 id_perro int, 
     Nombre varchar(255), 
     Fecha_nac int, 
     Sexo varchar(255), 
     dni_dueno int
     primary key (Id_perro, dni_dueno),
     );
use Perro;
Create Table Dueno(
		dni int,
        Nombre varchar(255),
        Apellido varchar(255),
        Telefono int,
        Direccion varchar(255),
        primary key(dni)
     );
truncate historial;


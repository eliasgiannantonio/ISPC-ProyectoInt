/*PUNTO 1) CREACION DE TABLA PERRO */
CREATE TABLE Perro(
ID_Perro int not null auto_increment,
Nombre varchar(45),
Fecha_nac date,
Sexo varchar(45),
DNI_Dueno INT NOT NULL,
PRIMARY KEY (ID_Perro),
FOREIGN KEY (DNI_Dueno) REFERENCES Dueno(DNI)
);

/*PUNTO 2) INSERTANDO NUEVO PERRO Y DUEÑO */
INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion) 
VALUES (43998924, 'Thom', 'Yorke', '0353-154-297565', 'Mal Paso 3138'); 

INSERT INTO Perro (Nombre, Fecha_nac, Sexo, DNI_Dueno)
VALUES ('Bartolo', '2002-03-04', "Macho", 43998924);

/*PUNTO 9) ACTUALIZANDO LA DIRECCION DEL DUEÑO */
UPDATE Dueno 
SET Direccion = 'Libertad 123'
WHERE Nombre = 'Thom';


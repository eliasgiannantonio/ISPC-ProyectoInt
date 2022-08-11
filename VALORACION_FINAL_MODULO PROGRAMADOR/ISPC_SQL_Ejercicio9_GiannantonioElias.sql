CREATE TABLE Perro(
ID_Perro int not null auto_increment,
Nombre varchar(45),
Fecha_nac datetime,
Sexo varchar(45),
DNI_Dueno INT NOT NULL,
PRIMARY KEY (ID_Perro),
FOREIGN KEY (DNI_Dueno) REFERENCES Dueno(DNI)
);

UPDATE Dueno 
SET Direccion = 'Libertad 123'
WHERE Nombre = 'Thom';
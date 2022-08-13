CREATE TABLE Perro (
  ID_Perro INT NOT NULL AUTO_INCREMENT,
  Nombre VARCHAR (25) NOT NULL,
  Fecha_nac DATETIME,
  Sexo VARCHAR (1) NOT NULL,
  DNI_dueno INT NOT NULL,
  PRIMARY KEY (ID_Perro),
  FOREIGN KEY (DNI_dueno) REFERENCES Dueno(DNI)
  );
  
INSERT INTO Perro
VALUES('Floppy' ,'14-11-2014', 'F', 35819300);


SELECT SUM(Monto) FROM Historial
WHERE Fecha BETWEEN '01-07-2022' AND '31-07-2022;
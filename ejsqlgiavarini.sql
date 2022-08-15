use ejperro;

CREATE TABLE ejperro (
  ID_Perro INT NOT NULL AUTO_INCREMENT,
  Nombre VARCHAR (45) NOT NULL,
  Fecha_nac DATETIME (6) NOT NULL,
  Sexo VARCHAR (45) NOT NULL,
  dni_dueno INT NOT NULL,
  PRIMARY KEY (ID_Perro)
);
INSERT INTO ejperro (Nombre, Fecha_nac, Sexo, dni_dueno)
VALUES ('Tobi', '01-02-20', 'M', '40108401'); 
UPDATE ejperro SET Fecha_nac = '01-02-20' where Fecha_nac = '20-10-21'
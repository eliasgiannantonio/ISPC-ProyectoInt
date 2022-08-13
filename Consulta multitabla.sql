use peluqueria_canina1;
select NombreD, direccion, nombre, id_perro, Fecha_nac 
from dueno D, perro P
where D.DNI = P.DNI_dueno
and NombreD="Pedro"
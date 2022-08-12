datos = [28957346, "Juan", "Perez", 4789689, "Belgrano 101"]
mayor_a = False

if datos[3] > 26000000:
    mayor_a = True

if mayor_a is True:
    print("DNI:", datos[0], "\nNombre y apellido:", datos[1], datos[2], "\nNumero de telefono:", datos[3], "\nSu numero de tel es mayor a 26000000", "\nDireccion:", datos[4])
else:
    print("DNI:", datos[0], "\nNombre y apellido:", datos[1], datos[2], "\nNumero de telefono:", datos[3], "\nSu numero de tel no es mayor a 26000000", "\nDireccion:", datos[4])




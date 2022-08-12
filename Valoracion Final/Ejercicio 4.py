#Crear un lista en Python denominado “list_perro” que contenga los siguientes valores:
#      14,  Fido,  12/12/2012 , Macho, 23546987
#Recorrer la lista “list_perro” con un bucle y mostrar sus elementos por pantalla , comenzando desde el último hasta el primero.

list_perro = [14, 'Fido', '12/12/2012', 'Macho', 23546987]
print(*list_perro)
print("\n")
longitud = len(list_perro)


for i in range(len(list_perro)):
    longitud = longitud - 1
    print(list_perro[longitud], end=' ')

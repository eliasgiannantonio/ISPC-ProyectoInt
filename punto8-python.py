Historial4 = (7510, 7960, 76180, 800, 4100)
valorMin = Historial4[0]

for x in Historial4:
    if (valorMin > x):
        valorMin = x

print(f"El valor minimo gastado en Olivia es : ${valorMin}")

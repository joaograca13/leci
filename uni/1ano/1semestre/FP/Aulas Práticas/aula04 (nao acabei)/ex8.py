lista = []
while True:
    n = (input("numero: "))
    if n == "":
        break
    lista.append(float(n))

media = sum(lista) / len(lista)
print("A média dos valores é:", media)

print(lista[-1])




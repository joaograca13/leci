n = int(input("Digite um numero inteiro: "))
lista = []

def Divisores(n, lista):
    if n % 1 == 0:
        lista.append(1)
    if n % 2 == 0:
        lista.append(2)
    if n % 3 == 0:
        lista.append(3)
    if  n % 4 == 0:
        lista.append(4)
    if n % 5 == 0:
        lista.append(5)
    if n % 6 == 0:
        lista.append(6)
    if n % 7 == 0:
        lista.append(7)
    if n % 8 == 0:
        lista.append(8)
    if n % 9 == 0:
        lista.append(9)
    if n == lista[-1]:
        return lista[:-1]
    return lista

print(Divisores(n, lista))

if n == lista[-1]:
    n > sum(lista[:-1])
    if n > sum(lista[:-1]):
        print("O numero", n, "e um numero deficiente")
    elif n == sum(lista[:-1]):
        print("O numero", n, "e um numero perfeito")
    elif n < sum(lista[:-1]):        
        print("O numero", n, "e um numero abundante")
if n != lista[-1]:
    n > sum(lista)        
    if n > sum(lista):
        print("O numero", n, "e um numero deficiente")
    elif n == sum(lista):
        print("O numero", n, "e um numero perfeito")
    elif n < sum(lista):
        print("O numero", n, "e um numero abundante")






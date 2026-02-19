lista = []

def inputFloatList():
    
    while True:
        valores = (input("Digite um número (ou pressione Enter para finalizar): "))
        
        if valores == "":
            break
        else:
            lista.append(int(valores))
        
    return lista


print(inputFloatList())


###################################################################################################

v = int(input("Diga um numero: "))
def countLower(lista, v):
    ListaLower = []


    for n in lista:
        if n < v:
            ListaLower.append(int(n))

    return ListaLower

print("Números menores que",v)
print(countLower(lista, v))


###################################################################################################
def minmax(lista):
    maior = lista[0]
    menor = lista[0]

    for n in lista:
        if n > maior:
            maior = n
        elif n < menor:
            menor = n
    
    print("o maior número da lista é: ", maior)
    print("o menor número da lista é: ", menor)

    return maior, menor

###################################################################################################
maior, menor = minmax(lista)
def media(lista, maior, menor):
    ListaMedia = []


    media = (maior + menor)/2
    print("Media entre o maior e o menor numero:", media)

    for n in lista:
        if n < media:
            ListaMedia.append(int(n))

    print("Lista de números menores que a média:", ListaMedia)
    return ListaMedia

media(lista, maior, menor)


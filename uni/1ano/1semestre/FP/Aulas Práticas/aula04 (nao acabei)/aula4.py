
#ler numero
def entradadados():


n = int(input('ler numero'))
menor = n
maior = n
soma = n
conta = 1

while n > 0:
    n = int(input('intruduza um numero:'))
    if n > 0:
        if n > maior:
            maior = n
        if n < menor:
            menor = n    
        soma = soma + n
        conta = conta + 1
media = soma/conta
return(maior, menor, media)

def apresentresul(a):
    print('media:', a[2])
    print('maior:', a[0])
    print('menor:', a[1])

def main():
    dados = entradadados()
    apresentresul(dados)




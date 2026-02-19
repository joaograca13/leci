#definir funcao que da o maior de dois valores

x1 = int(input('primeiro valor: '))
x2 = int(input('segundo valor: '))
xm = (max(x1, x2))

def max(x1, x2):
    if x1 > x2:
        return('o maior valor e {}'.format(x1))
    elif x1 < x2:
        return('o maior valor e {}'.format(x2))
    else:
        return('os valores sao iguais')



print(max(x1, x2))




   
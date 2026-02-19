#definir funcao que da o maior de três valores

x1 = int(input('primeiro valor: '))
x2 = int(input('segundo valor: '))
x3 = int(input('terceiro valor: '))
xm = (max(x1, x2))

def max2(x1, x2, x3):
    if x3 > xm:
        return('o maior valor e {}'.format(x3))
    elif x3 < xm:
        return('o maior valor e {}'.format(xm))
    else:
        return('os valores sao iguais')


print(max2(x1, x2, x3))

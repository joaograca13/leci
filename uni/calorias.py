
 
h = 'h'
m = 'm'
s = str(input('sexo h/m: '))
peso = float(input('peso em Kg: '))
altura = float(input('altura em cm: '))
idade = float(input('idade: '))
print()
p = float(input('produtividade: '))
TMBh = 66 + (13.8*peso) + (5.0*altura) - (6.8*idade)
TMBm = 655 + (9.6*peso) + (1.8*altura) - (4.7*idade)

if s == h:
    cal = TMBh*p
else:
    cal = TMBm*p


#para ganhar peso
cal1 = cal + 500
p1 = 1.5*peso
g1 = 1*peso
c1 = (cal1 - (p1*4 + g1*9))/4

#para perder peso
cal2 = cal - 500
p2 = 2*peso
g2 = 1*peso
c2 = (cal2 - (p2*4 + g2*9))/4

print('para ganhar peso:')
print(cal1, 'calorias diarias')
print(p1, 'gramas de proteina')
print(g1, 'gramas de gordura')
print(c1, 'gramas de carbohidratos')

print('para perder peso:')
print(cal2, 'calorias diarias')
print(p2, 'gramas de proteina')
print(g2, 'gramas de gordura')
print(c2, 'gramas de carbohidratos')


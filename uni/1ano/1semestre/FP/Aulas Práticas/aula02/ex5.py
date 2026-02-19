
s = float(input('duracao da chamada em segundos: '))

m = 0.12 + ((s - 60)*0.002)

if s <= 60:
    print('a chamada custou {}'.format(0.12))
elif s > 60:
    print(m)








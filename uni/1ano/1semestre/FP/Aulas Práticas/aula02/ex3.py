
x1 = float(input("number? "))
x2 = float(input("number? "))
x3 = float(input("number? "))
x4 = float(input("number? "))

#2 comparações com 3 números

if x1 > x2:
    print('Maior:', x1 if x1 > x3 else x3)
else:
    print('Maior: ', x2 if x2 > x3 else x3)

#3 comparações com 4 números

maior_ab = x1 if x1 > x2 else x2  
maior_cd = x3 if x3 > x4 else x4  
maior = maior_ab if maior_ab > maior_cd else maior_cd


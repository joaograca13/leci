
CTP= float(input('Nota do teste TP: '))
CP= float(input('Nota do teste P: '))

NF= 0.3*CTP + 0.7*CP                         #Nota Final se CTP >= 6.5 e CP >= 6.5

if CTP <= 6.5 or CP <= 6.5:
    NF=66
    print('Reprovado por nota minima: ', NF)
    ATPR= float(input('Nota do teste de recurso TP: '))
    APR= float(input('Nota do teste de recurso P: '))
elif NF < 10:
    print('Reprovado', NF)
    ATPR= float(input('Nota do teste de recurso TP: '))
    APR= float(input('Nota do teste de recurso P: '))
else:
    print('passado')
    exit()                                   #o codigo precisa disto para parar nesta altura senão continua a rodar


NFR= 0.3*max(CTP, ATPR) + 0.7*max(CP, APR)  #Nota Final de Recurso

if NFR >= 10:
    print('passado', NFR)
else: 
    print('reprovado', NFR)




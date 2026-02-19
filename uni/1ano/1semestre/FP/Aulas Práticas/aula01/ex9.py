#esquema mal feito para explicar a situação

#3andar 4voltas   9m
#2andar 4voltas   6m
#1andar 4voltas   3m
#r/c              0m

#metros e segundos percorridos por dia

metros=(4*9)+(4*6)+(4*3)
segundos=(4*9)+(4*6)+(4*3)

#resolução por dia (kilometros, horas)

kilometros_por_dia=metros/1000
horas_por_dia=segundos/3600

#resoluçâo por ano (kilometros, horas)

kilometros_por_ano=kilometros_por_dia*365
horas_por_ano=horas_por_dia*365

print(kilometros_por_ano)
print(horas_por_ano)






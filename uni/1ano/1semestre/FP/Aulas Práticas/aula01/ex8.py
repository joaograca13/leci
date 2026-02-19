import math

x1 = float(input("x1? "))
y1 = float(input("y1? "))
x2 = float(input("x2? "))
y2 = float(input("y2? "))

# pontos das coordenadas
p1 = (x1, y1)
p2 = (x2, y2)

print("Point1:", p1)
print("Point2:", p2)

# distancia entre 2 pontos

distancia= math.sqrt((x2-x1)**2+(y2-y1)**2)
print('distância entre os 2 pontos:', distancia)



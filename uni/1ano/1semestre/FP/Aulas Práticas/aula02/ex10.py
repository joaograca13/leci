import math

# Função para determinar a seção baseada no ângulo
def determinar_secao(angulo):
    secoes = [6, 13, 4, 18, 1, 20, 5, 12, 9, 14, 11, 8, 16, 7, 19, 3, 17, 2, 15, 10]
    index = int((angulo + 9) // 18) % 20
    return secoes[index]

# Entrada das coordenadas do dardo
x = float(input("Digite a coordenada x (em mm): "))
y = float(input("Digite a coordenada y (em mm): "))

# Calcula a distância do ponto até o centro (0, 0)
distancia = math.sqrt(x**2 + y**2)

# Calcula o ângulo em graus (0° corresponde à seção 6)
angulo = math.degrees(math.atan2(y, x))
if angulo < 0:
    angulo += 360

# Determina a seção correspondente
secao = determinar_secao(angulo)

# Determina a pontuação com base na distância e na seção
if distancia <= 6.35:
    pontuacao = 50  # Inner Bullseye
elif distancia <= 15.9:
    pontuacao = 25  # Outer Bullseye
elif 99 < distancia <= 107:
    pontuacao = 3 * secao  # Triple Ring
elif 162 < distancia <= 170:
    pontuacao = 2 * secao  # Double Ring
elif distancia <= 170:
    pontuacao = secao  # Normal Section
else:
    pontuacao = 0  # Fora do alvo

print(f"Seção: {secao}")
print(f"Pontuação obtida: {pontuacao}")
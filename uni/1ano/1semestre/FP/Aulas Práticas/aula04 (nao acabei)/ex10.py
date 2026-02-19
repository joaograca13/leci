lista = []
def Fibonacci(n):
    if n == 0:
        return 0
    elif n == 1:
        return 1
    elif n == 2:
        return 1
    
    a, b = 1, 1
    for _ in range(2, n):
        a, b = b, a + b
    return b
    
    
n = int(input("n-esimo numero da sequencia: "))
print("resultado:", Fibonacci(n))
    
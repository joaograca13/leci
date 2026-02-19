n = 1
def isPrime(n):
    if n == 2:
        return True 
    elif n == 3:
        return True
    elif n == 5:
        return True
    elif n == 7:
        return True
    elif n % 2 == 0:
        return False
    elif n % 3 == 0:
        return False
    elif n % 4 == 0:
        return False
    elif n % 5 == 0:
        return False
    elif n % 6 == 0:
        return False
    elif n % 7 == 0:
        return False
    elif n % 8 == 0:
        return False
    elif n % 9 == 0:
        return False
    else:
        return True 

while True:
        print(n, isPrime(n))   
        n += 1 
        if n == 101:
            break
n += 1

    





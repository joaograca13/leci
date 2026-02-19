# Complete the code to make the HiLo game.

import random

def playHiLo():
    # Pick a random number between 1 and 100, inclusive
    secret = random.randrange(1, 101);

    print("I picked a number between 1 and 100. Can you guess it?")
    # put your code here
    tentativas = 1
    n = 0
    while n != secret:
        n = int(input("Escolhe um numero: "))
        tentativas += 1
        if n > secret:
            print("- muito alto")
        elif n < secret:
            print("- muito baixo")
        else:
            print("YOUR DID IT")
            print("Tentaste", tentativas, "vezes")
        
    return n         

playHiLo()



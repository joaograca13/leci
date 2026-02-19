# a)
def evenThenOdd(s):
    even = s[0::2]
    odd = s[1::2]
    
    str = even + odd

    return str


# b)
def removeAdjacentDuplicates(s):

    resultado = s[0]
    for i in range(1, len(s)):
        if s[i] != s[i-1]:
            resultado += s[i]

    return resultado


# c)
def reapeatNumTimes(n):
    resultado = []

    for i in range(1, n + 1):
        resultado += [i] * i

    return resultado


# d)
def positionOfFirstLargest(arr):
    resultado = 0

    for i in range(1, len(arr)):
        if arr[i] > arr[resultado]:
            resultado = i

    return resultado




# ----------- TESTES ------------
print("a)")
print()
print(evenThenOdd("abcd"))
print(evenThenOdd("AaBbCcDdEeFf"))
print(evenThenOdd("Htehlelroe"))
print(evenThenOdd("a"))
print(evenThenOdd("ab"))
print("----------------------------")
print("b)")
print()
print(removeAdjacentDuplicates("Mississippi"))
print(removeAdjacentDuplicates("Hello"))
print("----------------------------")
print("c)")
print()
print(reapeatNumTimes(4))
print(reapeatNumTimes(0))
print(reapeatNumTimes(1))
print(reapeatNumTimes(10))
print("----------------------------")
print("d)")
print()
print(positionOfFirstLargest([0,1,2,3,4,5]))
print(positionOfFirstLargest([-1,-2,-3,-4]))
print(positionOfFirstLargest([0,1,5,3,4,5]))
print(positionOfFirstLargest([0,1,2,3,4,3]))
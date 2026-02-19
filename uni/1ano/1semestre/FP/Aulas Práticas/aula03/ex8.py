a = int(input('valor de a: '))
b = int(input('valor de b: '))
c = int(input('valor de c: '))
d = int(input('valor de d: '))


def intersects(a, b, c, d):

    if a < d and c < b:
        return(True)
    else:
        return(False)
    
print (intersects(a, b, c, d))


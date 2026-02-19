def inputfloatlist():
    lst = []
    running = True

    while running:
        c = input('value? ')
        if c == '':
            running = False
        else:
            lst.append(int(c))
            
    return lst

lst = inputfloatlist()
print(lst)

##############################################
def minmax(lst):
    max = lst[0]
    min = lst[0]

    for el in lst:
        if el > max:
           max = el
        if el < min:
            min = el

    return max, min

maxval, minval = minmax(lst)




###############################################

def countlower(lst, v):
    inf = 0
    for el in lst:
        if el < v:
            inf += 1
        print(el)
    return inf

v = 5
inf = countlower(lst, v)


##############################################

med = (maxval + minval)/2

inf = countlower(lst, med)

print('media dos valores: ', med,'inferiores a media: ', inf)








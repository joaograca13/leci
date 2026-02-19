
def hms2sec(h, m, s):
    sec = h*3600 + m*60 + s

    return sec

h=float(input('hours: '))
m=float(input('minutes: '))
s=float(input('seconds: '))

print(hms2sec(h, m, s))

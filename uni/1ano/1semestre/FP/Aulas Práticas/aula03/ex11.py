
def sec2hms(sec):
    h = sec//3600
    m = (sec%3600)//60
    s = sec%60
    
    return h, m, s  

sec= float(input('segundos: '))

h, m, s = sec2hms(sec)
print('({}, {}, {})'.format(round(h), round(m), round(s)))


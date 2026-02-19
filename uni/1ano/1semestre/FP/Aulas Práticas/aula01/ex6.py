
segundos =float(input('segundos:'))

h = segundos // 3600
m = (segundos % 3600) // 60
s = (segundos % 3600) % 60


print("{}:{}:{}".format(h, m, s))
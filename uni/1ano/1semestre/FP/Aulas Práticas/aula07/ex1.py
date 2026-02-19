from unidecode import unidecode
#from collections import OrderedDict
import sys

filename = 'pg3333.txt'

count = {}

with open(filename, 'r', encoding = 'utf8') as f:
    for line in f:
        for c in line:
            if c.isalpha():
                c = unidecode(c.lower())
                if c in count:
                    count[c] += 1
                else:
                    count[c] = 1

count = dict(sorted(count.items()))                           

for keys, values in count.items():
    print(keys,' ', values)

def shorten(nome):
    abreviatura = ""

    for str in nome:
        if str.isupper():
            abreviatura += str

    return abreviatura

print("Universidade de Aveiro:", shorten("Universidade de Aveiro")) 
print("United Nations Organization:", shorten("United Nations Organization"))   

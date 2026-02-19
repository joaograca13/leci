def ispalindrome(s):
    s = s.replace("", " ").lower() #tira os espaços e coloca tudo em minúsculas

    return s == s[::-1]

# TESTES
print(ispalindrome("Arara")) 
print(ispalindrome("Python"))
print(ispalindrome("121"))
print(ispalindrome("joão  joão"))

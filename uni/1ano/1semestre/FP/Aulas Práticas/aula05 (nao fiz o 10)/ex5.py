def countDigits(str):
   contador = 0
   for i in str:
      if i.isdigit():
         contador += 1
   return contador


#  FUNÇÃO DE TESTE
def main():
    str1 = "23 mil 456"
    print("str:", repr(str1))
    print("result:", countDigits(str1) )
    print("---------------")
    str2 = "23.49 km"
    print("str:", repr(str2))
    print("result:", countDigits(str2) )
    print("---------------")
    str3 = "nada"
    print("str:", repr(str3))
    print("result:", countDigits(str3) )


if __name__ == "__main__":
    main()

# Complete o programa!

# a)
def loadFile(fname, lst):
    try:
        with open(fname, 'r', encoding='latin-1') as f: 
            next(f, None) 
            
            for i, linha in enumerate(f, 1):
                linha = linha.strip()
                if not linha: continue 
                
                
                dados = linha.split()
                
                

                if len(dados) >= 8:
                    try:
                        numero = int(dados[0])
                        
                        n1 = float(dados[-3].replace(',', '.')) 
                        n2 = float(dados[-2].replace(',', '.'))
                        n3 = float(dados[-1].replace(',', '.'))
                        
                        
                        nome = " ".join(dados[1:-6])
                        
                        lst.append((numero, nome, n1, n2, n3))
                    except ValueError:
                        print(f"Erro de conversão na linha {i} do ficheiro {fname}")
    except FileNotFoundError:
        print(f"Ficheiro não encontrado: {fname}")

# b) Crie a função notaFinal aqui...
def notaFinal(reg):

    nota1 = reg[2]
    nota2 = reg[3]
    nota3 = reg[4]

    media = (nota1 + nota2 + nota3) / 3
    
    return media

# c) Crie a função printPauta aqui...
def printPauta(lst):
    if not lst:
        print("A lista está vazia! Verifica se os ficheiros têm dados e o nome correto.")
        return

   
    print(f'{"Numero":<10} {"Nome":<40} {"Nota ":>16}')
    
    for aluno in lst:
        media = notaFinal(aluno)
       
        print(f"{aluno[0]:<10} {aluno[1]:<40} {media:>15.1f}")


def main():
    lst = []
    # ler os ficheiros
    loadFile("school1.csv", lst)
    loadFile("school2.csv", lst)
    loadFile("school3.csv", lst)
    
    # ordenar a lista
    lst.sort(key=lambda x: x[1])

    # mostrar a pauta
    printPauta(lst)


# Call main function
if __name__ == "__main__":
    main()



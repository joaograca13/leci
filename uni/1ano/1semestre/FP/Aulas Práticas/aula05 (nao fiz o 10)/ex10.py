# jmr 2024 o programa

import sys

# Add auxiliary functions here.
...
def parse_date(date_str):
    # Substitui barras por hífens para uniformizar o separador
    date_str = date_str.replace('/', '-')
    
    if '-' in date_str:
        parts = date_str.split('-')
        # Tenta converter cada parte. Se falhar, usa None.
        # Ex: "9/05/1735" -> (1735, 5, 9) assumindo DD/MM/AAAA ou AAAA/MM/DD
        # Nota: Ajustei a ordem para (Ano, Mês, Dia) como pediu
        nums = [int(p) for p in parts if p.strip().isdigit()]
        
        # Se o ano estiver no fim (ex: 9/05/1735)
        if nums[-1] > 31:
            return (nums[-1], nums[1], nums[0])
        # Se o ano estiver no início (ex: 1735-05-9)
        return tuple(nums)
    else:
        # Apenas o ano
        return (int(date_str), None, None)
    

def load_lifetimes_file(file_name):
    """Load birth, death, name data from a file."""
    lst = []

    try:
        with open(file_name, 'r', encoding='utf-8') as file:
            for line in file:
                line = line.strip()
                if not line: continue
                
                parts = line.split('\t')
                if len(parts) >= 3:
                    # Processa as duas primeiras partes como datas
                    d1 = parse_date(parts[0])
                    d2 = parse_date(parts[1])
                    nome = parts[2]
                    
                    lst.append((d1, d2, nome))

    except FileNotFoundError:
        print("Ficheiro não encontrado.")
    except ValueError as e:
        print(f"Erro ao processar dados: {e}")
        
    return lst

def main():
    file_name = 'composers.txt'  # Replace with your file name
    lifes = load_lifetimes_file(file_name)

    print("THE DEAD COMPOSERS SOCIETY")
    print("==========================")

    for info in lifes:
        # Change this to show Name, Age and Date-of-death in aligned columns.
        ...
        print(info)


if __name__ == "__main__":
    main()


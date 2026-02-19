
def parseMDY(date):
    """Return (year, month, day) from date in MM/DD/YYYY format."""
    if "/" in date:
        partes = date.split("/")
        mes = int(partes[1])
        dia = int(partes[0])
        ano = int(partes[2])
        return ano, dia, mes
    else:
        ano = int(date)
        mes = 0
        dia = 0
        return ano, dia, mes


def yearsBetween(date1, date2):
    """Return integer number of years between two (y, m, d) dates."""
    ano1 = int(date1[0])
    mes1 = int(date1[1])
    ano2 = int(date2[0])
    mes2 = int(date2[1])

    if mes1 > mes2:
        diferenca = ano2 - ano1 -1
    else:
        diferenca = ano2 - ano1
        
    return diferenca 


def main():
    # Test parseMDY
    print(f"{parseMDY('12/25/2024') = }")  # (2024, 12, 25)
    print(f"{parseMDY('4/25/1974') = }")   # (1974, 4, 25)
    print(f"{parseMDY('1755') = }")        # (1755, 0, 0)

    # Test yearsBetween
    print(f"{yearsBetween((1900, 6, 1), (1935, 5, 31)) = }")  # 34
    print(f"{yearsBetween((1900, 6, 1), (1935, 6, 1)) = }")   # 35
    print(f"{yearsBetween((1900, 6, 1), (1936, 5, 31)) = }")  # 35


# This program may be used as a module too
if __name__ == "__main__":
    main()


# isLeapYear(year) deve devolver True se year é um ano bissexto
# e False se é um ano comum.  Corrija-a.
# (See: https://en.wikipedia.org/wiki/Leap_year)
def isLeapYear(year):
   return year%4 == 0 and year%100 != 0 or year%400 == 0


# monthDays deve devolver o número de dias de um dado mês num dado ano.
# Por exemplo, monthDays(2004, 2) deve devolver 29.
# Corrija-a.
def monthDays(year, month):
    MONTHDAYS = (0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)
    if isLeapYear(year) == True:
        days = 29
    else:
        days = MONTHDAYS[month]
    return days

# nextMonth deve devolver o mês seguinte ao mês (e ano) dado.
# Por exemplo, nextMonth(2016, 12) deve devolver (2017, 1).
def nextMonth(year, month):
   ...
   return year, month


# nextDay deve devolver o dia a seguir a uma dada data.
# Por exemplo, nextDay(2017, 1, 31) deve devolver (2017, 2, 1)
def nextDay(year, month, day):
    MONTHDAYS = (0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)
    if isLeapYear(year) == True:
        MONTHDAYS = (0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)
    day += 1
    if day > MONTHDAYS[month]:
        day = 1
        month += 1
    if month > 12:
        month = 1
        year += 1

    return year, month, day


# Defina uma função dateIsValid que deve
# devolver True se os seus argumentos formarem uma data válida
# e devolver False no caso contrário.
# Por exemplo, dateIsValid(1980, 2, 29) deve devolver True,
# dateIsValid(1980, 2, 30) deve devolver False.
...


# Defina uma função previousDay que devolva o dia anterior a uma dada data.
# Por exemplo, previousDay(1980, 3, 1) deve devolver (1980, 2, 29)
...


# Defina uma função previousMonth
# que devolva o mês anterior ao mês (e ano) dado.
# Por exemplo, previousMonth(1980, 3) deve devolver (1980, 2),
# previousMonth(1980, 1) deve devolver (1979, 12).
...


# No Codecheck, não chame nenhuma função: o sistema trata disso.
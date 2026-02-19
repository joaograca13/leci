import java.util.Scanner;

public class Ex2 {
    private int day;
    private int month;
    private int year;
    private int firstWeekdayOfYear;
    private int[][] eventos;

    // Construtor para inicializar uma data específica
    public Ex2(int day, int month, int year) {
        if (!valid(day, month, year)) {
            throw new IllegalArgumentException("Invalid date: ");
        }
        this.day = day;
        this.month = month;
        this.year = year;
    }

    // Construtor para inicializar o calendário de um ano
    public Ex2(int year, int firstWeekdayOfYear) {
        this.year = year;
        this.firstWeekdayOfYear = firstWeekdayOfYear;
        this.eventos = new int[12][];
        for (int i = 0; i < 12; i++) {
            this.eventos[i] = new int[monthDays(i + 1, year)];
        }
    }

    public static boolean validMonth(int month) {
        return month >= 1 && month <= 12;
    }

    public static int monthDays(int month, int year) {
        switch (month) {
            case 1: case 3: case 5: case 7: case 8: case 10: case 12:
                return 31;
            case 4: case 6: case 9: case 11:
                return 30;
            case 2:
                return leapYear(year) ? 29 : 28;
            default:
                throw new IllegalArgumentException("Invalid month: ");
        }
    }

    public static boolean leapYear(int year) {
        return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
    }

    public static boolean valid(int day, int month, int year) {
        if (!validMonth(month)) {
            return false;
        }
        int daysInMonth = monthDays(month, year);
        return day >= 1 && day <= daysInMonth;
    }

    public void set(int day, int month, int year) {
        if (!valid(day, month, year)) {
            throw new IllegalArgumentException("Invalid date: ");
        }
        this.day = day;
        this.month = month;
        this.year = year;
    }

    public int getDay() {
        return day;
    }

    public int getMonth() {
        return month;
    }

    public int getYear() {
        return year;
    }

    public int getFirstWeekdayOfYear() {
        return firstWeekdayOfYear;
    }

    public void increment() {
        if (day < monthDays(month, year)) {
            day++;
        } else {
            day = 1;
            if (month < 12) {
                month++;
            } else {
                month = 1;
                year++;
            }
        }
    }

    public void decrement() {
        if (day > 1) {
            day--;
        } else {
            if (month > 1) {
                month--;
                day = monthDays(month, year);
            } else {
                month = 12;
                day = 31;
                year--;
            }
        }
    }

    public int firstWeekdayOfMonth(int month) {
        if (!validMonth(month)) {
            throw new IllegalArgumentException("Invalid month: ");
        }
        int days = 0;
        for (int i = 1; i < month; i++) { // Corrigido para começar em 1
            days += monthDays(i, year);
        }
        return (firstWeekdayOfYear + days % 7) % 7;
    }

    public void addEvent(DateYMD date) {
        if (date.getYear() != year) {
            throw new IllegalArgumentException("Event year does not match calendar year.");
        }
        eventos[date.getMonth() - 1][date.getDay() - 1]++;
    }

    @Override
    public String toString() {
        return String.format("%02d/%02d/%04d", day, month, year);
    }
}

// Classe DateYMD para representar uma data
class DateYMD {
    private int day;
    private int month;
    private int year;

    public DateYMD(int day, int month, int year) {
        if (!Ex2.valid(day, month, year)) {
            throw new IllegalArgumentException("Invalid date: ");
        }
        this.day = day;
        this.month = month;
        this.year = year;
    }

    public int getDay() {
        return day;
    }

    public int getMonth() {
        return month;
    }

    public int getYear() {
        return year;
    }

    @Override
    public String toString() {
        return String.format("%02d/%02d/%04d", day, month, year);
    }
}

import java.util.Scanner;

public class Ex1 {
    private int day;
    private int month;
    private int year;

    public Ex1(int day, int month, int year) {
        if (!valid(day, month, year)) {
            throw new IllegalArgumentException("Invalid date: ");
        }
        this.day = day;
        this.month = month;
        this.year = year;
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
        int daysMonth = monthDays(month, year);
        return day >= 1 && day <= daysMonth;
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
                year--;
                day = 31;
            }
        }
    }

    @Override
    public String toString() {
        return String.format("%02d/%02d/%04d", day, month, year);
    }


    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Ex1 date = null;
        int opcao;

        do {
            System.out.println("Menu: ");
            System.out.println("1. Set date");
            System.out.println("2. Show current date");
            System.out.println("3. Increment date");
            System.out.println("4. Decrement date");
            System.out.println("0. Exit");
            System.out.print("Option: ");
            opcao = scanner.nextInt();

            switch (opcao) {
                case 1:
                    System.out.print("Day: ");
                    int day = scanner.nextInt();
                    System.out.print("Month: ");
                    int month = scanner.nextInt();
                    System.out.print("Year: ");
                    int year = scanner.nextInt();
                    try {
                        date = new Ex1(day, month, year);
                        System.out.println("Date set successfully: " + date);
                    } catch (IllegalArgumentException e) {
                        System.out.println(e.getMessage());
                    }
                    break;
                case 2:
                    if (date != null) {
                        System.out.println("date: " + date);
                    } else {
                        System.out.println("Date not set");
                    }
                    break;
                case 3:
                    if (date != null) {
                        date.increment();
                        System.out.println("Date incremented: " + date);
                    } else {
                        System.out.println("Date not set");
                    }
                    break;
                case 4:
                    if (date != null) {
                        date.decrement();
                        System.out.println("Date decremented: " + date);
                    } else {
                        System.out.println("Date not set");
                    }
                    break;
                case 0:
                    System.out.println("Exiting...");
                    break;
                default:
                    System.out.println("Invalid option");
            }
        } while (opcao != 0);

        scanner.close();
    }
}

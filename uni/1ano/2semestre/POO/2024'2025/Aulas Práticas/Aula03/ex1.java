import java.util.InputMismatchException;
import java.util.Scanner;

public class ex1 {

    public static void main(String[] args) {
        Scanner Scanner = new Scanner(System.in);

        int A = 0;

        while (A <= 0) {
            System.out.print("Valor: ");

        try {
            A = Scanner.nextInt();
            if (A <= 0) {
                System.out.println("O valor deve ser positivo. ");
            }
        } 
            catch (InputMismatchException e) {
                System.out.println("O valor deve ser inteiro. ");
                Scanner.next(); // Limpa a entrada inválida

            }
        }

        if (ehPrimo(A)) {
            System.out.println("O valor é um número primo. ");
        } else {
            System.out.println("O valor não é um número primo. ");
        }

        int soma = somaPrimos(A);
        System.out.println("A soma dos números primos até " + A + " é: " + soma);

        Scanner.close();
    }

    public static boolean ehPrimo(int num) {
        if (num < 1) {
            return false;
        }
        for (int i = 2; i <= Math.sqrt(num); i++) {
            if (num % i == 0) {
                return false;
            }
        }
        return true;

    }

    public static int somaPrimos(int valor) {
        int soma = 0;
        for (int i = 2; i <= valor; i++) {
            if (ehPrimo(i)) {
                soma += i;
            }
        }
        return soma;
    
            }
}
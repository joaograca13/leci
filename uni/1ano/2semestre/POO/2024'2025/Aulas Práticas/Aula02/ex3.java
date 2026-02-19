import java.util.Scanner;

public class ex3 {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        int A = 0, B = 0;

        while (A <= 0) {
        System.out.print("Valor do cateto A: ");
        A = scanner.nextInt();
        if (A <= 0) {
            System.out.println("O valor do cateto A deve ser positivo: ");
        }
    }

        while (B <= 0) {
        System.out.print("Valor do cateto B: ");
        B = scanner.nextInt();
        if (B <= 0) {
            System.out.println("O valor do cateto B deve ser positivo: ");
        }
    }


        double C = Math.sqrt(Math.pow(A, 2) + Math.pow(B, 2));
        System.out.printf("A hipotenusa é: %.2f%n", C);

        double angulo = Math.toDegrees(Math.acos(A / C));
        System.out.printf("O valor do angulo em graus e: %.2f%n", angulo);

        scanner.close();

    }
}

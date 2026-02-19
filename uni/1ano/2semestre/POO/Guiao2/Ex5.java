import java.util.Scanner;

public class Ex5 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        double v1, d1, v2, d2;

        do {
            System.out.print("Velocidade do primeiro trajeto: ");
            v1 = scanner.nextDouble();
            if (v1 <= 0) {
                System.out.print("Escreve uma velocidade positiva: ");
            }
        }   while (d1 == 0);

        do {
            System.out.print("Velocidade do segundo trajeto: ");
            v2 = scanner.nextDouble();
            if (v2 <= 0) {
                System.out.print("Escreve uma velocidade positiva:");
            }
        }   while (d2 == 0);

        do {
            System.out.print("Distancia do primeiro trajeto: ");
            d1 = scanner.nextDouble();
        } while (v1 != 0);

        do {
            System.out.print("Distancia do segundo trajeto: ");
            d2 = scanner.nextDouble();
        } while (v2 != 0);


        scanner.close();
    }
}
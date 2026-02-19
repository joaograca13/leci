import java.util.Scanner;

public class ex2 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Coordenadas de x de p1: ");
        int numero1 = scanner.nextInt();
        System.out.print("coordenada de y de p1: ");
        int numero2 = scanner.nextInt();
        System.out.print("coordenada de x de p2: ");
        int numero3 = scanner.nextInt();
        System.out.print("coordenada de y de p2: ");
        int numero4 = scanner.nextInt();

        double distancia = Math.sqrt(Math.pow(numero3 - numero1, 2) + Math.pow(numero4 - numero2, 2));
        System.out.printf("Distancia: %.1f%n", distancia);  

        scanner.close();
    }
}


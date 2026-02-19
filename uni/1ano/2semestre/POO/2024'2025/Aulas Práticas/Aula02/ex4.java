import java.util.ArrayList;
import java.util.Scanner;

public class ex4 {
    
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        ArrayList<Integer> lista = new ArrayList<Integer>();

        System.out.print("Valor: ");
        int primeirovalor = scanner.nextInt();
        lista.add(primeirovalor);
        int maximo = primeirovalor;
        int minimo = primeirovalor;
        int soma = primeirovalor;
        int contador = 1;

        while (true)  {
           System.out.print("Valor: "); 
           int valor = scanner.nextInt();
           if (valor == primeirovalor) {
            break; 
           }
           lista.add(valor);
           soma += valor;
              contador++;
           if (valor > maximo) {
               maximo = valor;
           }
           if (valor < minimo) {
               minimo = valor;
           }
        }

        double media = (double) soma / contador;

        ArrayList<Integer> acimamedia = new ArrayList<Integer>();
        for (int valor : lista) {
            if (valor > media) {
                acimamedia.add(valor);
            }
        }

        System.out.println("Lista: " + lista);
        System.out.println("Valor Maximo: " + maximo);
        System.out.println("Valor Minimo: " + minimo);
        System.out.printf("Media: %.2f%n", media);
        System.out.println("Total de numeros lidos: " + contador);
        System.out.println("Valores acima da media: " + acimamedia);
        

        scanner.close();
    }
}

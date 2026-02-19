import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Parte1 {
    // -----------------------------------------------------
    //          !!! Não alterar este código !!!
    // -----------------------------------------------------
    private static int v1;
    private static List<Integer> v2 = new ArrayList<>();
    private static String v3;
    private static List<String> v4 = new ArrayList<>();
    // -----------------------------------------------------

    // -----------------------------------------------------------
    // >> Pode acrescentar novos métodos aqui (não é obrigatório)
    // -----------------------------------------------------------

    // pex., public static void ler(SOURCE) {}

    // -----------------------------------------------------------

    public static void lerTeclado() {
        // TODO: implementar a leitura aqui
        // pex., ler(teclado); -ou- o que lhe for mais conveniente
        Scanner scanner = new Scanner(System.in);
        System.out.println("INT ");
        v1 = scanner.nextInt();
        System.out.println("LISTINT");
        v2 = scanner.nextIntList();
        System.out.println("STRING");
        v3 = scanner.nextLine();

    }

    public static void lerFicheiro() {
        // TODO: implementar a leitura aqui
        // pex., ler(ficheiro); -ou- o que lhe for mais conveniente
    }

    public static void imprimir() {
        // TODO: implementar a impressão aqui
        System.out.print(v1);
    }

    public static void main(String[] args) {
        // -----------------------------------------------------------------
        // !!! Não imprimir texto a pedir determinado input, ler direto !!!
        // -----------------------------------------------------------------
        
        // pode editar livremente este código
        lerTeclado();
        lerFicheiro();
        //imprimir();
    }
}

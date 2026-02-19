import java.util.Scanner;

public class ex2 {
    
    public static void main(String[] args) {
        Scanner Scanner = new Scanner(System.in);
        boolean continuar = true;

        while (continuar) {
            int numeroAleatirio = (int) (Math.random()*100) +1;
            int tentativas = 0;
            int paltite = 0;

            System.out.print("Tente adivinhar o valor LENDARIOO: ");
            while (paltite != numeroAleatirio) {
                paltite = Scanner.nextInt();
                tentativas++;
                if (paltite > numeroAleatirio) {
                    System.out.println("O valor é menor");
                } else if (paltite < numeroAleatirio) {
                    System.out.println("O valor é maior");
                }
            }

            System.out.print("Pretende continuar? Pressione (Y)es: ");
            String resposta = Scanner.next();
            if (!resposta.equalsIgnoreCase("Y") && !resposta.equalsIgnoreCase("Yes")) {
                continuar = false;

        }

        Scanner.close();
        }
    }
}



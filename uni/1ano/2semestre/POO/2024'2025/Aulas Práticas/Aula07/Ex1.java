import java.util.ArrayList;
import java.util.Scanner;

public class Ex1 {  
    public static void main(String[] args) {
        ArrayList<Forma> figuras = new ArrayList<>();
        Scanner scanner = new Scanner(System.in);
        int opcao;

        do {
            System.out.println("Menu: ");
            System.out.println("1. Circulo");
            System.out.println("2. Triangulo");
            System.out.println("3. Retangulo");
            System.out.println("4. Listar figuras");
            System.out.println("5. Comparar figuras");
            System.out.println("0. Sair");
            System.out.print("Opcao: ");
            opcao = scanner.nextInt();

            switch (opcao) {
                case 1:
                    System.out.print("Raio: ");
                    double raio = scanner.nextDouble();
                    System.out.print("Cor: ");
                    String cor = scanner.next();
                    figuras.add(new Circulo(cor, raio));
                    break;
                case 2:
                    System.out.print("Lado 1: ");
                    double lado1 = scanner.nextDouble();
                    System.out.print("Lado 2: ");
                    double lado2 = scanner.nextDouble();
                    System.out.print("Lado 3: ");
                    double lado3 = scanner.nextDouble();
                    System.out.print("Cor: ");
                    cor = scanner.next();
                    figuras.add(new Triangulo(cor, lado1, lado2, lado3));
                    break;
                case 3:
                    System.out.print("Comprimento: ");
                    double comprimento = scanner.nextDouble();
                    System.out.print("Largura: ");
                    double largura = scanner.nextDouble();
                    System.out.print("Cor: ");
                    cor = scanner.next();
                    figuras.add(new Retangulo(cor, comprimento, largura));
                    break;
                case 4:
                    for (Forma figura : figuras) {
                        System.out.println(figura);
                    }
                    break;
                case 5:
                    System.out.print("Indice 1: ");
                    int indice1 = scanner.nextInt();
                    System.out.print("Indice 2: ");
                    int indice2 = scanner.nextInt();
                    if (figuras.get(indice1).equals(figuras.get(indice2))) {
                        System.out.println("As figuras são iguais");
                    } else {
                        System.out.println("As figuras são diferentes");
                    }
                    break;
                case 0:
                    System.out.println("A sair...");
                    break;
                default:
                    System.out.println("Opcao invalida");
            }
        } while (opcao != 0);
        scanner.close();
    }

    public abstract static class Forma {
        private String cor;

        public Forma(String cor) {
            this.cor = cor;
        }

        public String getCor() {
            return cor;
        }

        public void setCor(String cor) {
            this.cor = cor;
        }

        public abstract double perimetro();
        public abstract double area();

        @Override
        public boolean equals(Object obj) {
            if (this == obj) return true;
            if (obj == null || getClass() != obj.getClass()) return false;
            Forma forma = (Forma) obj;
            return cor.equals(forma.cor);
        }

        @Override
        public String toString() {
            return "Forma [cor=" + cor + "]";
        }
    }

    public static class Circulo extends Forma {
        private double raio;

        public Circulo(String cor, double raio) {
            super(cor);
            if (raio <= 0) {
                throw new IllegalArgumentException("O raio deve ser positivo: ");
            }
            this.raio = raio;
        }

        public double getRaio() {
            return raio;
        }

        public void setRaio(double raio) {
            if (raio <= 0) {
                throw new IllegalArgumentException("O raio deve ser positivo: ");
            }
            this.raio = raio;
        }

        @Override
        public double perimetro() {
            return 2 * Math.PI * raio;
        }

        @Override
        public double area() {
            return Math.PI * raio * raio;
        }

        @Override
        public String toString() {
            return "Circulo [raio=" + raio + ", cor=" + getCor() + "]";
        }

        @Override
        public boolean equals(Object obj) {
            if (!super.equals(obj)) return false;
            Circulo circulo = (Circulo) obj;
            return Double.compare(circulo.raio, raio) == 0;
        }
    }

    public static class Triangulo extends Forma {
        private double lado1, lado2, lado3;

        public Triangulo(String cor, double lado1, double lado2, double lado3) {
            super(cor);
            if (lado1 <= 0 || lado2 <= 0 || lado3 <= 0) {
                throw new IllegalArgumentException("Os lados devem ser positivos: ");
            }
            if (lado1 + lado2 <= lado3 || lado1 + lado3 <= lado2 || lado2 + lado3 <= lado1) {
                throw new IllegalArgumentException("Os lados nao formam um triangulo: ");
            }
            this.lado1 = lado1;
            this.lado2 = lado2;
            this.lado3 = lado3;
        }

        public double getLado1() {
            return lado1;
        }

        public void setLado1(double lado1) {
            if (lado1 <= 0) {
                throw new IllegalArgumentException("O lado deve ser positivo: ");
            }
            this.lado1 = lado1;
        }

        public double getLado2() {
            return lado2;
        }

        public void setLado2(double lado2) {
            if (lado2 <= 0) {
                throw new IllegalArgumentException("O lado deve ser positivo: ");
            }
            this.lado2 = lado2;
        }

        public double getLado3() {
            return lado3;
        }

        public void setLado3(double lado3) {
            if (lado3 <= 0) {
                throw new IllegalArgumentException("O lado deve ser positivo: ");
            }
            this.lado3 = lado3;
        }

        @Override
        public double perimetro() {
            return lado1 + lado2 + lado3;
        }

        @Override
        public double area() {
            double p = perimetro() / 2;
            return Math.sqrt(p * (p - lado1) * (p - lado2) * (p - lado3));
        }

        @Override
        public String toString() {
            return "Triangulo [lado1=" + lado1 + ", lado2=" + lado2 + ", lado3=" + lado3 + ", cor=" + getCor() + "]";
        }

        @Override
        public boolean equals(Object obj) {
            if (!super.equals(obj)) return false;
            Triangulo triangulo = (Triangulo) obj;
            return Double.compare(triangulo.lado1, lado1) == 0 && 
                   Double.compare(triangulo.lado2, lado2) == 0 && 
                   Double.compare(triangulo.lado3, lado3) == 0;
        }
    }

    public static class Retangulo extends Forma {
        private double comprimento, largura;

        public Retangulo(String cor, double comprimento, double largura) {
            super(cor);
            if (comprimento <= 0 || largura <= 0) {
                throw new IllegalArgumentException("Os lados devem ser positivos: ");
            }
            this.comprimento = comprimento;
            this.largura = largura;
        }

        public double getComprimento() {
            return comprimento;
        }

        public void setComprimento(double comprimento) {
            if (comprimento <= 0) {
                throw new IllegalArgumentException("O comprimento deve ser positivo: ");
            }
            this.comprimento = comprimento;
        }

        public double getLargura() {
            return largura;
        }

        public void setLargura(double largura) {
            if (largura <= 0) {
                throw new IllegalArgumentException("A largura deve ser positiva: ");
            }
            this.largura = largura;
        }

        @Override
        public double area() {
            return comprimento * largura;
        }

        @Override
        public double perimetro() {
            return 2 * (comprimento + largura);
        }

        @Override
        public String toString() {
            return "Retangulo [comprimento=" + comprimento + ", largura=" + largura + ", cor=" + getCor() + "]";
        }

        @Override
        public boolean equals(Object obj) {
            if (!super.equals(obj)) return false;
            Retangulo retangulo = (Retangulo) obj;
            return Double.compare(retangulo.comprimento, comprimento) == 0 && 
                   Double.compare(retangulo.largura, largura) == 0;
        }
    }
}
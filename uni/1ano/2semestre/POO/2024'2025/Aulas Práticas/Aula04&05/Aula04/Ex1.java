import java.util.ArrayList;
import java.util.Scanner;

public class Ex1 {
    public static void main(String[] args) {
        ArrayList<Object> figuras = new ArrayList<>();
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
                    figuras.add(new Circulo(raio));
                    break;
                case 2:
                    System.out.print("Lado 1: ");
                    double lado1 = scanner.nextDouble();
                    System.out.print("Lado 2: ");
                    double lado2 = scanner.nextDouble();
                    System.out.print("Lado 3: ");
                    double lado3 = scanner.nextDouble();
                    figuras.add(new Triangulo(lado1, lado2, lado3));
                    break;
                case 3:
                    System.out.print("Comprimento: ");
                    double comprimento = scanner.nextDouble();
                    System.out.print("Largura: ");
                    double largura = scanner.nextDouble();
                    figuras.add(new Retangulo(comprimento, largura));
                    break;
                case 4:
                    for (Object figura : figuras) {
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
}

class Circulo {
    private double raio;

    public Circulo(double raio) {
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

    public double calcularArea() {
        return Math.PI * raio * raio;
    }

    public double calcularPerimetro() {
        return 2 * Math.PI * raio;
    }

    @Override
    public String toString() {
        return "Circulo [raio=" + raio + "]";
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;
        Circulo circulo = (Circulo) obj;
        return Double.compare(circulo.raio, raio) == 0;
    }
}

class Triangulo {
    private double lado1, lado2, lado3;

    public Triangulo(double lado1, double lado2, double lado3) {
        if (lado1 <= 0 || lado2 <= 0 || lado3 <= 0) {
            throw new IllegalArgumentException("Os lados devem ser positivos: ");
        }
        if (!satisfazDesigualdadeTriangular(lado1, lado2, lado3)) {
            throw new IllegalArgumentException("Os lados não satisfazem a desigualdade triangular: ");
        }
        this.lado1 = lado1;
        this.lado2 = lado2;
        this.lado3 = lado3;
    }

    private boolean satisfazDesigualdadeTriangular(double lado1, double lado2, double lado3) {
        return lado1 < lado2 + lado3 && lado2 < lado1 + lado3 && lado3 < lado1 + lado2;
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

    public double calcularArea() {
        double p = calcularPerimetro() / 2;
        return Math.sqrt(p * (p - lado1) * (p - lado2) * (p - lado3));
    }

    public double calcularPerimetro() {
        return lado1 + lado2 + lado3;
    }

    @Override
    public String toString() {
        return "Triangulo [lado1=" + lado1 + ", lado2=" + lado2 + ", lado3=" + lado3 + "]";
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;
        Triangulo triangulo = (Triangulo) obj;
        return Double.compare(triangulo.lado1, lado1) == 0 &&
               Double.compare(triangulo.lado2, lado2) == 0 &&
               Double.compare(triangulo.lado3, lado3) == 0;
    }
}

class Retangulo {
    private double comprimento, largura;

    public Retangulo(double comprimento, double largura) {
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

    public void setAltura(double largura) {
        if (largura <= 0) {
            throw new IllegalArgumentException("A largura deve ser positiva: ");
        }
        this.largura = largura;
    }

    public double calcularArea() {
        return comprimento * largura;
    }

    public double calcularPerimetro() {
        return 2 * (comprimento + largura);
    }

    @Override
    public String toString() {
        return "Retangulo [comprimento=" + comprimento + ", largura=" + largura + "]";
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;
        Retangulo retangulo = (Retangulo) obj;
        return Double.compare(retangulo.comprimento, comprimento) == 0 &&
               Double.compare(retangulo.largura, largura) == 0;
    }
}
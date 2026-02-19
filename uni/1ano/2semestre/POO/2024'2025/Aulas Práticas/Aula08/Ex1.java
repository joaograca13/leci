import java.util.ArrayList;

public class Ex1 {

    public interface IKmPercorridos {
        void trajeto(int quilometros);
        int ultimoTrajeto();
        int distanciaTotal();
    }


    public interface IGestaoBAteria {
        double cargaDisponivel();
        void carregar(double percentagem);
        void limitarCargaMaxima(double percentagem);
    }


    public abstract class Veiculo implements IKmPercorridos {
        private String matricula;
        private String marca;
        private String modelo;
        private int potencia;
        private int distanciaTotal;
        private int ultimoTrajeto;

        public Veiculo(String matricula, String marca, String modelo, int potencia) {
            this.matricula = matricula;
            this.marca = marca;
            this.modelo = modelo;
            this.potencia = potencia;
            this.distanciaTotal = 0;
            this.utimoTrajeto = 0;
        }

        public String getMatricula() {
            return matricula;
        }

        public String getMarca() {
            return marca;
        }

        public String getModelo() {
            return modelo;
        }

        public int getPotencia() {
            return potencia;
        }

        @Override
        public void trajeto(int quilometros) {
            this.ultimoTrajeto = quilometros;
            this.distanciaTotal += quilometros;
        }

        @Override
        public int ultimoTrajeto() {
            return this.ultimoTrajeto;	
        }

        @Override
        public int distanciaTotal() {
            return this.distanciaTotal;
        }

        @Override
        public String toString() {
            return String.format("Matricula: %s, Marca: %s, Modelo: %s, Potencia: %d CV, Distancia Total: %d km",
                    matricula, marca, modelo, potencia, distanciaTotal);
        }
    }


    public class Motociclo extends Veiculo {
        private String tipo;

        public Motociclo(String matricula, String marca, String modelo; int potencia, String tipo) {
            super(matricula, marca, modelo, potencia);
            this.tipo = tipo;
        }

        public String getTipo() {
            return tipo;
        }

        @Override
        public String toString() {
            return super.toString() + ", Tipo: " + tipo;
        }
    }


    public class AutomovelLigeiro extends Veiculo {
        private String numeroQuadro;
        private int capacidadeBagageira;
        
        public AutomovelLigeiro(String matricula, String marca, String modelo, int potencia, String numeroQuadro, int capacidadeBagageira) {
            super(matricula, marca, modelo, potencia);
            this.numeroQuadro = numeroQuadro;
            this.capacidadeBagageira = capacidadeBagageira;
        }

        public String getNumeroQuadro() {
            return numeroQuadro;
        }

        public int getCapacidadeBagageira() {
            return capacidadeBagageira;
        }

        @Override
        public String toString() {
            return super.toString() + ", Numero Quadro: " + numeroQuadro + ", Capacidade Bagageira: " + capacidadeBagageira + "L";
        }
    }


    public class Taxi extends AutomovelLigeiro {
        private int numeroLicenca;

        public Taxi(String matricula, String marca, String modelo, int potencia, String numeroQuadro, int capacidadeBagageira, int numeroLicenca) {
            super(matricula, marca, modelo, potencia, numeroQuadro, capacidadeBagageira);
            this.numeroLicenca = numeroLicenca;
        }

        public int getNumeroLicenca() {
            return numeroLicenca;
        }

        @Override
        public String toString() {
            return super.toString() + ", Numero Licenca: " + numeroLicenca;
        }
    }


    public class PesadoMercadorias extends Veiculo {
        private String numeroQuadro;
        private int peso;
        private int cargaMaxima;

        public PesadoMercadorias(String matricula, String marca, String modelo, int potencia, String numeroQuadro, int peso, int cargaMaxima) {
            super(matricula, marca, modelo, potencia);
            this.numeroQuadro = numeroQuadro;
            this.peso = peso;
            this.cargaMaxima = cargaMaxima;
        }

        public String getNumeroQuadro() {
            return numeroQuadro;
        }

        public int getPeso() {
            return peso;
        }

        public int getCargaMaxima() {
            return cargaMaxima;
        }

        @Override
        public String toString() {
            return super.toString() + ", Numero Quadro: " + numeroQuadro + ", Peso: " + peso + "kg, Carga Maxima: " + cargaMaxima + "kg";
        }
    }


    public class PesadoPassageiros extends Veiculo {
        private String numeroQuadro;
        private int peso;
        private int numeroPassageiros;

        public PesadoPassageiros(String matricula, String marca, String modelo, int potencia, String numeroQuadro, int peso, int numeroPassageiros) {
            super(matricula, marca, modelo, potencia);
            this.numeroQuadro = numeroQuadro;
            this.peso = peso;
            this.numeroPassageiros = numeroPassageiros;
        }

        public String getNumeroQuadro() {
            return numeroQuadro;
        }

        public int getPeso() {
            return peso;
        }

        public int getNumeroPassageiros() {
            return numeroPassageiros;
        }

        @Override
        public String toString() {
            return super.toString() + ", Numero Quadro: " + numeroQuadro + ", Peso: " + peso + "kg, Numero Passageiros: " + numeroPassageiros;
        }
    }


    public class AutomovelLigeiroEletrico extends AutomovelLigeiro implements IGestaoBAteria {
        private double cargaAtual;
        private double cargaMaxima;

        public AutomovelLigeiroEletrico(String matricula, String marca, String modelo, int potencia, String numeroQuadro, int capacidadeBagageira, double cargaMaxima) {
            super(matricula, marca, modelo, potencia, numeroQuadro, capacidadeBagageira);
            this.cargaAtual = 0;
            this.cargaMaxima = cargaMaxima;
        }

        @Override
        public double cargaDisponivel() {
            return (cargaAtual / cargaMaxima) * 100;
        }

        @Override
        public void carregar(double percentagem) {
            cargaAtual = Math.min(cargaAtual + (cargaMaxima * percentagem / 100), cargaMaxima);
        }

        @Override
        public void limitarCargaMaxima(double percentagem) {
            cargaMaxima = cargaMaxima * (percentagem / 100);
            if (cargaAtual > cargaMaxima) {
                cargaAtual = cargaMaxima;
            }
        }

        @Override
        public String toString() {
            return super.toString() + ", Carga Atual: " + cargaAtual + "kWh, Carga Maxima: " + cargaMaxima + "kWh";
        }
    }


    public class Telemovel implements IGestaoBateria {
        private String numero;
        private double cargaAtual;
        private double cargaMaxima;
    
        public Telemovel(String numero, double cargaMaxima) {
            this.numero = numero;
            this.cargaAtual = cargaMaxima;
            this.cargaMaxima = cargaMaxima;
        }
    
        public String getNumero() {
            return numero;
        }
    
        @Override
        public double cargaDisponivel() {
            return (cargaAtual / cargaMaxima) * 100;
        }
    
        @Override
        public void carregar(double percentagem) {
            cargaAtual = Math.min(cargaAtual + (cargaMaxima * percentagem / 100), cargaMaxima);
        }
    
        @Override
        public void limitarCargaMaxima(double percentagem) {
            cargaMaxima = cargaMaxima * (percentagem / 100);
            if (cargaAtual > cargaMaxima) {
                cargaAtual = cargaMaxima;
            }
        }
    
        @Override
        public String toString() {
            return "Telemovel [Numero: " + numero + ", Carga Atual: " + cargaAtual + " mAh, Carga Maxima: " + cargaMaxima + " mAh]";
        }
    }


    public class EmpresaAluguer {
        private String nome;
        private String codigoPostal;
        private String email;
        private ArrayList<Veiculo> viaturas;

        public EmpresaAluguer(String nome, String codigoPostal, String email) {
            this.nome = nome;
            this.codigoPostal = codigoPostal;
            this.email = email;
            this.viaturas = new ArrayList<>();
        }

        public void adicionarViatura(Veiculo veiculo) {
            viaturas.add(veiculo);
        }

        public Veiculo viaturaComMaisKm() {
            return viaturas.stream().max((v1, v2) -> Integer.compare(v1.distanciaTotal(), v2.distanciaTotal())).orElse(null);
        }

        public Veiculo viaturaComMenosKm() {
            return viaturas.stream().min((v1, v2) -> Integer.compare(v1.distanciaTotal(), v2.distanciaTotal())).orElse(null);
        }

        @Override
        public String toString() {
            return "EmpresaAluguer [Nome: " + nome + ", Codigo Postal: " + codigoPostal + ", Email: " + email + ", Viaturas: " + viaturas + "]";
        }
    }


    public class Atleta implements IKmPercorridos {
        private String nome;
        private int distanciaTotal;
        private int ultimoTrajeto;
        private Telemovel telemovel;

        public Atleta(String nome, Telemovel telemovel) {
            this.nome = nome;
            this.telemovel = telemovel;
            this.distanciaTotal = 0;
            this.ultimoTrajeto = 0;
        }

        public String getNome() {
            return nome;
        }

        public Telemovel getTelemovel() {
            return telemovel;
        }

        @Override
        public void trajeto(int quilometros) {
            this.ultimoTrajeto = quilometros;
            this.distanciaTotal += quilometros;
        }

        @Override
        public int ultimoTrajeto() {
            return ultimoTrajeto;
        }

        @Override
        public int distanciaTotal() {
            return distanciaTotal;
        }

        @Override
        public String toString() {
            return "Atleta [Nome: " + nome + ", Distancia Total: " + distanciaTotal + " km, Telemovel: " + telemovel + "]";
        }
    }


    public class Main {
        public static void main(String[] args) {
            EmpresaAluguer empresa = new EmpresaAluguer("Aluguer Aveiro", "3810-193", "contacto@aluguer.pt");
    
            // Criar viaturas
            Motociclo moto = new Motociclo("AA-12-BC", "Yamaha", "R1", 200, "desportivo");
            AutomovelLigeiro carro = new AutomovelLigeiro("BB-34-CD", "Toyota", "Corolla", 120, "12345", 500);
            Taxi taxi = new Taxi("CC-56-DE", "Mercedes", "Classe E", 150, "67890", 450, 123);
            PesadoMercadorias camiao = new PesadoMercadorias("DD-78-EF", "Volvo", "FH16", 500, "98765", 8000, 20000);
            PesadoPassageiros autocarro = new PesadoPassageiros("EE-90-GH", "Scania", "Touring", 400, "54321", 12000, 50);
            AutomovelLigeiroEletrico carroEletrico = new AutomovelLigeiroEletrico("FF-12-IJ", "Tesla", "Model 3", 300, "13579", 400, 75);
    
            // Adicionar viaturas à empresa
            empresa.adicionarViatura(moto);
            empresa.adicionarViatura(carro);
            empresa.adicionarViatura(taxi);
            empresa.adicionarViatura(camiao);
            empresa.adicionarViatura(autocarro);
            empresa.adicionarViatura(carroEletrico);
    
            // Criar atleta
            Telemovel telemovel = new Telemovel("912345678", 100);
            Atleta atleta = new Atleta("João Silva", telemovel);
    
            // Testar métodos
            moto.trajeto(100);
            carro.trajeto(200);
            taxi.trajeto(150);
            camiao.trajeto(300);
            autocarro.trajeto(250);
            carroEletrico.trajeto(180);
            atleta.trajeto(50);
    
            System.out.println("Empresa: " + empresa);
            System.out.println("Atleta: " + atleta);
    
            System.out.println("Viatura com mais km: " + empresa.viaturaComMaisKm());
            System.out.println("Viatura com menos km: " + empresa.viaturaComMenosKm());
    
            // Mostrar carga disponível de todas as entidades com bateria
            System.out.println("Carga disponível do carro elétrico: " + carroEletrico.cargaDisponivel() + "%");
            System.out.println("Carga disponível do telemóvel: " + telemovel.cargaDisponivel() + "%");
    
            // Limitar carga máxima a 80%
            carroEletrico.limitarCargaMaxima(80);
            telemovel.limitarCargaMaxima(80);
    
            // Carregar baterias abaixo de 40%
            if (carroEletrico.cargaDisponivel() < 40) {
                carroEletrico.carregar(40);
            }
            if (telemovel.cargaDisponivel() < 40) {
                telemovel.carregar(40);
            }
    
            System.out.println("Carga após ajustes:");
            System.out.println("Carro elétrico: " + carroEletrico.cargaDisponivel() + "%");
            System.out.println("Telemóvel: " + telemovel.cargaDisponivel() + "%");
        }
    }
}

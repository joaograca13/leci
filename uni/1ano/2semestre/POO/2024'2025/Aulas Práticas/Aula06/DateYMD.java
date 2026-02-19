public class DateYMD {

    public static class Pessoa {
        private String nome;
        private int cc;
        private DateYMD dataNasc;

        public Pessoa(String nome, int cc, DateYMD dataNasc) {
            this.nome = nome;
            this.cc = cc;
            this.dataNasc = dataNasc;
        }

        public String getName() {
            return nome;
        }

        public int getCc() {
            return cc;
        }

        public DateYMD getDataNasc() {
            return dataNasc;
        }

        @Override
        public String toString() {
            return nome + "; CC: " + cc + "; Data de Nascimento: " + dataNasc;
        }
    }

    public static class DateYMD {
        private int day;
        private int month;
        private int year;

        public DateYMD(int day, int month, int year) {
            if (!valid(day, month, year)) {
                throw new IllegalArgumentException("Data inválida.");
            }
            this.day = day;
            this.month = month;
            this.year = year;
        }

        public static boolean validMonth(int month) {
            return month >= 1 && month <= 12;
        }

        public static int monthDays(int month, int year) {
            switch (month) {
                case 1: case 3: case 5: case 7: case 8: case 10: case 12:
                    return 31;
                case 4: case 6: case 9: case 11:
                    return 30;
                case 2:
                    return leapYear(year) ? 29 : 28;
                default:
                    throw new IllegalArgumentException("Mês inválido.");
            }
        }

        public static boolean leapYear(int year) {
            return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
        }

        public static boolean valid(int day, int month, int year) {
            if (!validMonth(month)) {
                return false;
            }
            int daysInMonth = monthDays(month, year);
            return day >= 1 && day <= daysInMonth;
        }

        public void set(int day, int month, int year) {
            if (!valid(day, month, year)) {
                throw new IllegalArgumentException("Data inválida.");
            }
            this.day = day;
            this.month = month;
            this.year = year;
        }

        public int getDay() {
            return day;
        }

        public int getMonth() {
            return month;
        }

        public int getYear() {
            return year;
        }

        @Override
        public String toString() {
            return String.format("%02d/%02d/%04d", day, month, year);
        }
    }

    public static class Aluno extends Pessoa {
        private static int nextNMec = 100;
        private int nMec;
        private DateYMD dataInsc;

        public Aluno(String nome, int cc, DateYMD dataNasc, DateYMD dataInsc) {
            super(nome, cc, dataNasc);
            this.nMec = nextNMec++;
            this.dataInsc = dataInsc;
        }

        public Aluno(String nome, int cc, DateYMD dataNasc) {
            this(nome, cc, dataNasc, new DateYMD(1, 1, 2025)); // Assumindo a data atual como 1/1/2025
        }

        public int getNMec() {
            return nMec;
        }

        public DateYMD getDataInsc() {
            return dataInsc;
        }

        @Override
        public String toString() {
            return super.toString() + "; NMec: " + nMec + "; Data de Inscrição: " + dataInsc;
        }
    }

    public static class Professor extends Pessoa {
        private String categoria;
        private String departamento;

        public Professor(String nome, int cc, DateYMD dataNasc, String categoria, String departamento) {
            super(nome, cc, dataNasc);
            this.categoria = categoria;
            this.departamento = departamento;
        }

        public String getCategoria() {
            return categoria;
        }

        public String getDepartamento() {
            return departamento;
        }

        @Override
        public String toString() {
            return super.toString() + "; Categoria: " + categoria + "; Departamento: " + departamento;
        }
    }

    public static class Bolseiro extends Aluno {
        private Professor orientador;
        private int bolsa;

        public Bolseiro(String nome, int cc, DateYMD dataNasc, DateYMD dataInsc, Professor orientador, int bolsa) {
            super(nome, cc, dataNasc, dataInsc);
            this.orientador = orientador;
            this.bolsa = bolsa;
        }

        public Professor getOrientador() {
            return orientador;
        }

        public void setOrientador(Professor orientador) {
            this.orientador = orientador;
        }

        public int getBolsa() {
            return bolsa;
        }

        public void setBolsa(int bolsa) {
            this.bolsa = bolsa;
        }

        @Override
        public String toString() {
            return super.toString() + "; Orientador: " + orientador.getName() + "; Bolsa: " + bolsa;
        }
    }

    public static void main(String[] args) {
        Aluno al = new Aluno("João Paulo", 125733, new DateYMD(15, 10, 1990), new DateYMD(13, 9, 2018));
        Professor prof = new Professor("Maria João", 123456, new DateYMD(10, 5, 1970), "Assistente", "DEI");
        Bolseiro bol = new Bolseiro("Joana", 123456, new DateYMD(10, 5, 1990), new DateYMD(10, 5, 2018), prof, 1000);
        bol.setBolsa(1200);

        System.out.println("Aluno: " + al.getName());
        System.out.println(al);
        System.out.println("Bolseiro: " + bol.getName() + ", NMec:" + bol.getNMec() + ", Bolsa: " + bol.getBolsa() + ", Orientador: " + bol.getOrientador().getName());
        System.out.println(bol);
    }
}
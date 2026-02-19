public class ex1 {
    public static void main(String[] args) {
        long segundos = 347876;
        String s1 = String.format("%02d:%02d:%02d",
            segundos / 3600, 
            (segundos % 3600) / 60, 
            segundos % 60);

        System.out.println(s1);
    }
}
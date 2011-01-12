import java.math.BigInteger;
import java.util.Scanner;

/**
 * Created by IntelliJ IDEA.
 * User: Milten
 * Date: 2010-11-25
 * Time: 12:51:08
 * University: UG
 */
public class DuzeLiczby {
    public static void main(String[] args) {
         Scanner scanner = new Scanner(System.in);
        BigInteger i1 = scanner.nextBigInteger();
        BigInteger i2 = scanner.nextBigInteger();
        DuzyInt liczba = new DuzyInt(i1, i2);
        System.out.println(" suma = " + liczba.getSuma());
        System.out.println("ruznica = " + liczba.getRoznica());
        
        System.out.println("iloczyn = " + liczba.getIliczyn());
        try {
        	System.out.println("iloraz = " + liczba.getIloraz());
        }
        catch (java.lang.ArithmeticException wyjatek) {
			System.out.println("B³¹d! dzielenie przez zero");
		}
        System.out.println("silnia = " + liczba.getSilnia());
        System.out.println("n po k = " + liczba.getNetwon());
    }
}
class DuzyInt {
    private BigInteger liczba1;
    private BigInteger liczba2;

    DuzyInt(BigInteger liczba1, BigInteger liczba2) {
        this.liczba1 = liczba1;
        this.liczba2 = liczba2;
    }

    public BigInteger getSuma() {
        return liczba1.add(liczba2);
    }
    public BigInteger getRoznica() {
        return liczba1.subtract(liczba2);
    }
    public BigInteger getIliczyn() {
        return liczba1.multiply(liczba2);
    }
    public BigInteger getIloraz() throws java.lang.ArithmeticException {
        return liczba1.divide(liczba2);
    }                                                                
    public BigInteger getSilnia() {
        BigInteger s;
        BigInteger i;

        s = BigInteger.ONE;
        i = BigInteger.ONE;
        for (; ((i.compareTo(liczba1)) <= 0); i = i.add(BigInteger.valueOf(1))) {
            s = s.multiply(i);
        }
        return s;
    }
    public BigInteger getSilnia(BigInteger a) {
        BigInteger s;
        BigInteger i;

        s = BigInteger.ONE;
        i = BigInteger.ONE;
        for (; ((i.compareTo(a)) <= 0); i = i.add(BigInteger.valueOf(1))) {
            s = s.multiply(i);
        }
        return s;
    }
    public BigInteger getNetwon() {
    	BigInteger wynik;
    	BigInteger nk = liczba1.subtract(liczba2);
    	
    	wynik = (getSilnia(liczba1))
    		.divide(((getSilnia(liczba2).multiply(getSilnia(nk)))));
    	return wynik;
    }
}


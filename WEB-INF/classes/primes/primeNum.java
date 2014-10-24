package primes;
import java.util.ArrayList;
import java.util.Random;

public class primeNum {
	
	public primeNum() {
	}	

	public int random() {
		Random generator = new Random();
		for (int rng = 1; rng <= 10; rng++); {
			int randInt = generator.nextInt(11);
			return(randInt);
		}
	}
	public static boolean primeCheck(int num) {
		for(int i = 2; i < num; i++) {
			if(num % i == 0) {
				return false;
			}
		}
		return true;

	}
}

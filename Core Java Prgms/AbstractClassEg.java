import java.util.Scanner;
abstract class Bank{
	abstract void rateOfInt(int a);
}

class SBI extends Bank{
	 void rateOfInt(int a) {
		System.out.println("SBI ROI = "+(a*0.12));
	}
}

class PNB extends Bank{
	 void rateOfInt(int a) {
		System.out.println("PNB ROI = "+(a*0.08));
	}
}

public class AbstractClassEg {

	public static void main(String[] args) {
		System.out.print("Enter amount : ");
		Scanner sc = new Scanner(System.in);
		int amount = sc.nextInt();
		
		Bank b;
		b = new SBI();
		b.rateOfInt(amount);
		b = new PNB();
		b.rateOfInt(amount);
	}
}


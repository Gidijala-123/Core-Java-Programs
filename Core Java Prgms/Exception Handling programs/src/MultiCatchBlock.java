import java.util.*;
public class MultiCatchBlock {
	public static void main(String[] args) {
		try {
			System.out.print("Enter num 1 : ");	
			Scanner sc = new Scanner(System.in);
			int num1 = sc.nextInt();
			System.out.print("Enter num 2 : ");
			int num2 = Integer.parseInt(sc.next());
			int result = num1/num2;
			System.out.println(result);
		}
		catch(ArithmeticException ae) {
			System.out.println("Raised Arithmetic Exception "+ae.getMessage());
		}
		catch(NumberFormatException nfe) {
			System.out.println("Raised Number Format Exception "+nfe.getMessage());
		}
		catch(InputMismatchException ime) {
			System.out.println("Raised Input Mismatch Exception "+ime.getMessage());
		}
		finally {
			System.out.println("Executed finally block...!");
		}

	}

}

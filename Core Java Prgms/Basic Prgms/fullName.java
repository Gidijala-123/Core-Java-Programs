import java.util.Scanner;

public class fullName {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		System.out.print("Enter your first name : ");
		String fname = s.next();
		System.out.print("Enter your last name : ");		
		String lname = s.next();
		System.out.print("My full name is : "+(fname+lname));
	}
}



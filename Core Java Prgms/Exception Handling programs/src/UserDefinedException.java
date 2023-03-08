import java.util.*;
public class UserDefinedException extends Exception{
	static int age;
	static void Eligibility(int age) {
		try {
			if(age < 18) {
				throw new UserDefinedException();
			}
			else {
				System.out.println("You are eligible to vote 😁");
			}
		}
		catch(UserDefinedException ude) {
			System.out.println("You are not eligible to vote 😢");
		}
		finally {
			System.out.println("For more details logon to : wwww.govtOfIndia.com");
		}
	}
	
	public static void main(String[] args) {
		System.out.print("Enter your age : ");
		Scanner sc = new Scanner(System.in);
		int userAge = sc.nextInt();
		Eligibility(userAge);
	}

}

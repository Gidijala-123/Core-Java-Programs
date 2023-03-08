import java.util.*;
public class PalindromeOrNot {

	public static void main(String[] args) {
		System.out.print("Enter a string : ");
		Scanner sc = new Scanner(System.in);
		String name = sc.nextLine();
		sc.close();
		StringBuffer sb = new StringBuffer(name);
		String reversed = sb.reverse().toString();
		System.out.println("Given String is : "+name);
		System.out.println("Reversed String is : "+reversed);
		if(name.equalsIgnoreCase(reversed)) {
			System.out.println("The given string is 'Palindrome'");
		}
		else {
			System.out.println("The given string is 'Not a Palindrome'");
		}		
	}
}

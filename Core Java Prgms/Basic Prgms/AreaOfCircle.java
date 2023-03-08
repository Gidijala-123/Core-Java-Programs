import java.util.*;
public class AreaOfCircle {

	public static void main(String[] args) {
		System.out.println("Enter r value: ");
		Scanner sc1 = new Scanner(System.in);
		int range = sc1.nextInt();
		int result = (22*range*range)/7;
		System.out.println("The area of circle is : " +result);

	}

}

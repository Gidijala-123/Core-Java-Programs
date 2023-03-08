import java.util.Scanner;
public class PerimeterOfSquare {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		System.out.println("Enter side of square : ");
		double a = s.nextDouble();
		System.out.println("Perimeter of square is : "+(4*a));
	}

}

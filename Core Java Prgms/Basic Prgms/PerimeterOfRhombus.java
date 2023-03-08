import java.util.Scanner;
public class PerimeterOfRhombus {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		System.out.println("Enter side : ");
		double a = s.nextDouble();
		System.out.println("Perimeter of rhombus is : "+(4*a));
	}

}

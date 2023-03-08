import java.util.Scanner;
public class AreaOfEquilateralTriangle {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		System.out.println("Enter side of a triangle : ");
		double d = s.nextDouble();
		System.out.println("Area of triangle is : "+((Math.sqrt(3)/4)*(d*d)));
	}

}

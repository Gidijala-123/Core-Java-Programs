import java.util.Scanner;
public class CurvedSurfaceAreaOfCube {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		System.out.println("Enter side : ");
		double b = s.nextDouble();
		System.out.println("Curved surface area of cube is : "+(4*b*b));
	}

}

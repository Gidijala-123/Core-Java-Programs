import java.util.Scanner;
public class TotalSurfaceAreaOfCylinder {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		System.out.println("Enter val of Radius : ");
		double r = s.nextDouble();
		System.out.println("Enter val of Height : ");
		double h = s.nextDouble();
		System.out.println("Area of Rectange is : "+(((2*22*r)/7)*(r+h)));
	}

}

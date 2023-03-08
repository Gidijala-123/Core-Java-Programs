import java.util.Scanner;
public class PerimeterOfParallelogram {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		System.out.println("Enter val of Height : ");
		double l = s.nextDouble();
		System.out.println("Enter val of Breadth : ");
		double b = s.nextDouble();
		System.out.println("Area of Rectange is : "+2*(l+b));
	}

}

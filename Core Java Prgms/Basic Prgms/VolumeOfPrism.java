import java.util.Scanner;
public class VolumeOfPrism {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		System.out.println("Enter base val : ");
		double b = s.nextDouble();
		System.out.println("Enter height val : ");
		double h = s.nextDouble();
		System.out.println("Volume of prism is : "+(b*h));
	}

}

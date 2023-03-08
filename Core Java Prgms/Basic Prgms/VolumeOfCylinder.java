import java.util.Scanner;
public class VolumeOfCylinder {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		System.out.println("Enter radius val : ");
		double r = s.nextDouble();
		System.out.println("Enter height val : ");
		double h = s.nextDouble();
		System.out.println("Volume of prism is : "+((22*r*r*h)/7));
	}

}

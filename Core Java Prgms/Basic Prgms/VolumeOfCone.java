import java.util.Scanner;
public class VolumeOfCone {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		System.out.println("Enter radius : ");
		double r = s.nextDouble();
		System.out.println("Enter height : ");
		double h = s.nextDouble();
		System.out.println("Volume of cone is : "+((22*r*r*h)/(3*7)));
	}

}

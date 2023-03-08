import java.util.Scanner;
public class VolumeOfSphere {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		System.out.println("Enter radius val : ");
		double r = s.nextDouble();
		System.out.println("Volume of prism is : "+((4*22*r*r*r)/(3*7)));
	}

}

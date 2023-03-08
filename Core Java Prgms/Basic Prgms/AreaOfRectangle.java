import java.util.Scanner;
public class AreaOfRectangle {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		System.out.println("Enter val of Length : ");
		int l = s.nextInt();
		System.out.println("Enter val of Breadth : ");
		int b = s.nextInt();
		System.out.println("Area of Rectange is : "+(l*b));
	}

}

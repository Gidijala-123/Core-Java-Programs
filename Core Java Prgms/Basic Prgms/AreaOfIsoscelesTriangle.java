import java.util.*;
public class AreaOfIsoscelesTriangle {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter length of same side : ");
		int l = sc.nextInt();
		System.out.println("Enter side2 of triangle : ");
		int s = sc.nextInt();
		System.out.println("Area of isosceles triangle : "+((s/4)*Math.sqrt((4*l*l)-(s*s))));
	}

}

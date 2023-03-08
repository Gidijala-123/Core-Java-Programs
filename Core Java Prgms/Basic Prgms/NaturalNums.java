import java.util.Scanner;
public class NaturalNums {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		System.out.print("Enter the range : ");
		int rnge = s.nextInt();
		for(int i = 1;i<=rnge;i++) {
			System.out.println(i);
		}
	}

}

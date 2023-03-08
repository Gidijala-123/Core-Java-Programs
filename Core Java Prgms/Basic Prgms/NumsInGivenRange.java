import java.util.*;
public class NumsInGivenRange {

	public static void main(String[] args) {
		int i;
		Scanner s = new Scanner(System.in);
		System.out.print("Enter the range : ");
		int rnge = s.nextInt();
		for(i=1;i<=rnge;i++) {
			System.out.println(i);
		}
	}

}

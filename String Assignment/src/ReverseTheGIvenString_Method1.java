import java.util.*;
public class ReverseTheGIvenString_Method1 {

	public static void main(String[] args) {
		System.out.print("Enter a string : ");
		Scanner sc = new Scanner(System.in);
		String name = sc.nextLine();
		StringBuffer sb = new StringBuffer(name);
		sb.reverse();
		System.out.println(sb);
	}

}

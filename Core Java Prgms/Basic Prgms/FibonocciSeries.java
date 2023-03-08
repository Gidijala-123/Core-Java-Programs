import java.util.*;
public class FibonocciSeries {

	public static void main(String[] args) {
		int n1=0,n2=1,n3;
		System.out.print("Enter the range : ");
		Scanner sc = new Scanner(System.in);
		int range = sc.nextInt();
		System.out.print("Fibonocci series within given range is : " +(n1+" "+n2));		
		
		for(int i=2;i<=range;i++) {
			n3 = n1+n2;
			System.out.print(" "+n3);
			n1 = n2;
			n2 = n3;
		}
	}
}



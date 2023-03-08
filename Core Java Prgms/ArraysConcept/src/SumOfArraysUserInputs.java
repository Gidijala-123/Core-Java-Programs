import java.util.*;
public class SumOfArraysUserInputs {

	public static void main(String[] args) {
		System.out.print("Enter the size of array : ");
		Scanner sc = new Scanner(System.in);
		int size = sc.nextInt();
		int[] arr = new int[size];
		System.out.print("Enter "+size+" elements : ");		
		int sum = 0;
		for(int i=0;i<size;i++) {
			arr[i] = sc.nextInt();
			sum+=arr[i];
		}
		System.out.println("The sum of given elements is : "+sum);
	}

}

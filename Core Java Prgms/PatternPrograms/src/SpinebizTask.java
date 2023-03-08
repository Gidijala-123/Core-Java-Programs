import java.util.*;
public class SpinebizTask {
	void ITApps(){
		Scanner s = new Scanner(System.in);
		System.out.println("Enter employee IDs : ");
		int ids = s.nextInt();
		System.out.println("Employee ID is : "+ids);
	}
	public static void main(String args[]) {
		SpinebizTask obj = new SpinebizTask();
		obj.ITApps();
	}
}

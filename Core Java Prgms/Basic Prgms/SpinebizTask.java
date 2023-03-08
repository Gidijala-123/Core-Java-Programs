import java.util.Scanner;
public class SpinebizTask {
	int ITApps(){
		Scanner s1 = new Scanner(System.in);
		System.out.println("Enter your ID : ");
		int ids = s1.nextInt();
//		System.out.println("Employee ID is : "+ids);
		return ids;
	}
	String TraineeNames(String fname,String lname) {
//		Scanner s2 = new Scanner(System.in);
//		System.out.println("Enter your first name : ");
//		String fname = s2.next();
//		System.out.println("Enter your first name : ");
//		String lname = s2.next();
//		System.out.println("Full name is : "+(fname+lname));
		String name = fname+lname;
		
		return name;
		
	}
	public static void main(String args[]) {
		SpinebizTask obj = new SpinebizTask();
		int result = obj.ITApps();
		obj.TraineeNames(shivani,rao);
		System.out.println("Employee ID is : "+result);
	}
}

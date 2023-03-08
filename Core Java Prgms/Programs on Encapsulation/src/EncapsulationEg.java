import java.util.*;
class Account {  
	private long AccNum;  
	private String AccName;   
	private int id = 123;
	
	public long getAccNum() {  
	    return AccNum;  
	}  
	public void setAccNum(long AccNum) {  
	    this.AccNum = AccNum;  
	}
	public String getAccName() {
		return AccName;
	}
	public void setAccName(String AccName) {
		this.AccName = AccName;
	}
	public int getId() {
		return id;
	}
		
}  

public class EncapsulationEg {  
	public static void main(String[] args) {  
		Account obj = new Account(); 
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter your Account number : ");
		long accountNumber = sc.nextInt();
		obj.setAccNum(accountNumber);
		
		System.out.print("Enter your name : ");
		String name = sc.next();
		obj.setAccName(name);

	    System.out.println();
	    System.out.println("Your account details = "+obj.getId()+" "+obj.getAccNum()+" "+obj.getAccName());  
	    sc.close();
	}  
} 



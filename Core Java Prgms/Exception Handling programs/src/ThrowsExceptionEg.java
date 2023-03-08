import java.util.*;
public class ThrowsExceptionEg {  
    void divideNum(int m, int n) throws ArithmeticException,InputMismatchException {      	//throws is used for methods
        int div = m / n;  
        System.out.println(div);
    }  
    public static void main(String[] args) {   
        try {  
        	System.out.print("Enter quotient : ");
        	Scanner sc = new Scanner(System.in);
        	int q = sc.nextInt();
        	System.out.print("Enter divisor : ");
        	int d = sc.nextInt();
        	ThrowsExceptionEg obj = new ThrowsExceptionEg(); 
            obj.divideNum(q, d);
        }  
        catch (ArithmeticException ae){  
            System.out.println("\nNumber cannot be divided by 0 "+ae);  
        }  
        catch (InputMismatchException nfe){  
            System.out.println("\nInput Mismatch exception is raised "+nfe);  
        }           
        System.out.println("Rest of the code..");  
    }  
}



import java.io.FileOutputStream;  
import java.io.PrintStream;  
public class PrintStreamEg{    
 public static void main(String args[])throws Exception{    
   FileOutputStream fout=new FileOutputStream("C:\\Users\\Lenovo\\eclipse-workspace\\FileOutputStream.txt");    
   PrintStream pout=new PrintStream(fout);    
   pout.println(2022);    
   pout.println("Hello Bhargava");    
   pout.println("Happy New Year");    
   pout.close();    
   fout.close();    
  System.out.println("Success..!");    
 }    
}  


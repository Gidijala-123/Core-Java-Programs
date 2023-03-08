import java.io.FileWriter;  
public class FileWriterEg {  
    public static void main(String args[]){    
         try{    
           FileWriter fw=new FileWriter("C:\\Users\\Lenovo\\eclipse-workspace\\FileWriter\\FileWriterEg.txt");    
           fw.write("Hai bhargava this is file writer text");    
           fw.close();    
          }catch(Exception e){System.out.println(e);}    
          System.out.println("Success...");    
     }    
} 




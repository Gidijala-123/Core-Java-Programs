import java.io.FileOutputStream;  
public class FileOutputStreamWriteByte {  
    public static void main(String args[]){    
           try{    
             FileOutputStream fout = new FileOutputStream("C:\\Users\\Lenovo\\eclipse-workspace\\FileOuputStreamWriteByteFolder\\FileOuputStreamWriteByteData.txt");    
             fout.write(65);    
             fout.close();    
             System.out.println("success...");    
            }catch(Exception e){System.out.println(e);}    
      }    
}  


import java.io.FileReader;  
public class FileReaderEg {  
    public static void main(String args[])throws Exception{    
      FileReader fr=new FileReader("C:\\Users\\Lenovo\\eclipse-workspace\\FileWriter\\FileWriterEg.txt");    
      int i;    
      while((i=fr.read())!=-1)    
      System.out.print((char)i);    
      fr.close();    
    }    
}  




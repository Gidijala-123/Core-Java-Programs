import java.io.*;
public class OuputStreamWriterEg {  
    public static void main(String[] args) {  
          try {  
            OutputStream outputStream = new FileOutputStream("C:\\Users\\Lenovo\\eclipse-workspace\\BufferedOuputStreamFolder\\OutputStreamWriterData.txt");  
            Writer outputStreamWriter = new OutputStreamWriter(outputStream);    
            outputStreamWriter.write("This is output stream writer example");    
            outputStreamWriter.close();  
        } catch (Exception e) {  
            e.getMessage();  
        }  
    }  
}  


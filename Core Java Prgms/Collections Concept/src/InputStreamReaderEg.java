import java.io.*;
public class InputStreamReaderEg {  
    public static void main(String[] args) {  
        try  {  
            InputStream stream = new FileInputStream("C:\\Users\\Lenovo\\eclipse-workspace\\BufferedOuputStreamFolder\\BufferedOuputStreamData.txt");  
            Reader reader = new InputStreamReader(stream);  
            int data = reader.read();  
            while (data != -1) {  
                System.out.print((char) data);  
                data = reader.read();  
                reader.close();
            }  
        } catch (Exception e) {  
            e.printStackTrace();  
        }  
         
    }  
} 



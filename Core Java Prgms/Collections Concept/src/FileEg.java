import java.io.*;  
public class FileEg {  
    public static void main(String[] args) {  
  
        try {  
            File file = new File("C:\\Users\\Lenovo\\eclipse-workspace\\FileEg\\abc.text");  
            if (file.createNewFile()) {  
                System.out.println("New File is created!");  
            } else {  
                System.out.println("File already exists.");  
            }  
        } catch (IOException e) {  
            e.printStackTrace();  
        }  
  
    }  
} 
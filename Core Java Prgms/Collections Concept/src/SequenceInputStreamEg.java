import java.io.*;  
class SequenceInputStreamEg {    
  public static void main(String args[])throws Exception{    
   FileInputStream input1=new FileInputStream("C:\\Users\\Lenovo\\eclipse-workspace\\BufferedOuputStreamFolder\\SequenceInputStreamFile_1.txt");    
   FileInputStream input2=new FileInputStream("C:\\Users\\Lenovo\\eclipse-workspace\\BufferedOuputStreamFolder\\SequenceInputStreamFile_2.txt");    
   SequenceInputStream inst=new SequenceInputStream(input1, input2);    
   int j;    
   while((j=inst.read())!=-1){    
    System.out.print((char)j);    
   }    
   inst.close();    
   input1.close();    
   input2.close();    
  }    
}



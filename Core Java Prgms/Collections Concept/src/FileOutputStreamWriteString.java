import java.io.FileOutputStream;

public class FileOutputStreamWriteString {
	public static void main(String args[]) {
		try {
			FileOutputStream fout = new FileOutputStream("C:\\Users\\Lenovo\\eclipse-workspace\\FileOuputStreamWriteByteFolder\\FileOuputStreamWriteStringData.txt");
			String s = "Text inside dynamically created text file hello vijay";
			byte b[] = s.getBytes();// converting string into byte array
			fout.write(b);
			fout.close();
			System.out.println("Writing text in file is Success...");
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}




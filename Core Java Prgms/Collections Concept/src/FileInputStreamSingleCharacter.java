import java.io.FileInputStream;

public class FileInputStreamSingleCharacter {
	public static void main(String args[]) {
		try {
			FileInputStream fin = new FileInputStream("C:\\Users\\Lenovo\\eclipse-workspace\\FileOuputStreamWriteByteFolder\\FileOuputStreamWriteStringData.txt");
			int i = fin.read();
			System.out.println(i); // Reads data from txt in ASCII format so we've to convert it into character
			System.out.print((char) i);
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}

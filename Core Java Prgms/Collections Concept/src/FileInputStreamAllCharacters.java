import java.io.FileInputStream;

public class FileInputStreamAllCharacters {
	public static void main(String args[]) {
		try {
			FileInputStream fin = new FileInputStream("C:\\Users\\Lenovo\\eclipse-workspace\\FileOuputStreamWriteByteFolder\\FileOuputStreamWriteStringData.txt");
			int i = 0;
			while ((i = fin.read()) != 0) {
				System.out.print((char) i);
			}
			fin.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}
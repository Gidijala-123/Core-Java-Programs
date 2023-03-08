import java.io.*;

public class BufferedOutputStreamEg {
	public static void main(String args[]) throws Exception {
		FileOutputStream fout = new FileOutputStream("C:\\Users\\Lenovo\\eclipse-workspace\\BufferedOuputStreamFolder\\BufferedOuputStreamData.txt");
		BufferedOutputStream bout = new BufferedOutputStream(fout);
		String s = "Buffered output stream data in text file";
		byte b[] = s.getBytes();
		bout.write(b);
		bout.flush();
		bout.close();
		fout.close();
		System.out.println("Success");
	}
}


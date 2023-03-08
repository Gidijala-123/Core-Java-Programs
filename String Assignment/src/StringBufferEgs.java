public class StringBufferEgs {
	public static void main(String[] args) {
		StringBuffer str1 = new StringBuffer("Bhargava Ramana");	
		System.out.println("Given string : "+str1);
		System.out.println("indexOf() : "+str1.indexOf("a"));		
		System.out.println("insert() : "+str1.insert(0,"G."));
		System.out.println("append() : "+str1.append(", Im from kakinada"));
		System.out.println("replace() : "+str1.replace(11, 16, "R****"));
		System.out.println("delete() : "+str1.delete(10, 17));		
		System.out.println("capacity() : "+str1.capacity());
		System.out.println("length() : "+str1.length());
		System.out.println("substring() : "+str1.substring(0,11));
		System.out.println("reverse() : "+str1.reverse());
	}
}


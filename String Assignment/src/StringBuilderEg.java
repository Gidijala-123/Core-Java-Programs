public class StringBuilderEg {

	public static void main(String[] args) {
	  StringBuilder sb1 = new StringBuilder("Bhargava Gidijala");
	  System.out.println("Given input: " + sb1); 
	  System.out.println(sb1.append(" Kakinada"));
	  System.out.println(sb1.appendCodePoint(67));
	  System.out.println("capacity() : "+sb1.capacity());  
	  System.out.println("charAt() : " + sb1.charAt(5)); 
	  System.out.println("codePointAt() : "+ sb1.codePointAt(5));  
	  System.out.println("codePointBefore() : " + sb1.codePointBefore(7));
	  System.out.println("codePointCount() : "+ sb1.codePointCount(2, 9));
	  System.out.println("delete() : "+ sb1.delete(2, 8).toString());
	  System.out.println("Before capacity() : "+ sb1.capacity());
	  sb1.ensureCapacity(0);
	  System.out.println("After capacity() : "+ sb1.capacity());  
	  
	  char[] array = new char[7];
	  sb1.getChars(0, 7, array, 0);
	  System.out.print("Char array contains : " );
	  for (int i = 0; i < array.length; i++) {
	      System.out.print(array[i] + " ");
	  }
	  
	  System.out.println("indexOf() : "+ sb1.indexOf("ga"));
	  System.out.println("lastIndexOf() : "+ sb1.lastIndexOf("a"));  
	  System.out.println("length() : "+ sb1.length());
	  System.out.println("replace() : "+ sb1.replace(1, 5, "e are ").toString());
	  System.out.println("reverse() : " + sb1.reverse().toString());
	  sb1.setCharAt(2, 'U');
	  System.out.println("After setCharAt() : " + sb1.toString());
	  sb1.setLength(10);
	  System.out.println("After setLength() : "+ sb1.toString());
	  System.out.println("subSequence() : "+ sb1.subSequence(0, 7));
	  System.out.println("substring() : "+ sb1.substring(5));
	  System.out.println("Original String after substring --> "+ sb1.toString());
	  System.out.println("Capacity before trimToSize() = "+ sb1.capacity());
	  sb1.trimToSize();
	  System.out.println("String = " + sb1.toString());
	  System.out.println("Capacity after trimToSize() = "+ sb1.capacity());
	  System.out.print("insert() : "+sb1.insert(8, true));
	}
}



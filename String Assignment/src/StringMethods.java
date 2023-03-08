import java.util.*;
public class StringMethods {
		
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter string 1 : ");
		String str1 = sc.nextLine();
		System.out.print("Enter string 2 : ");
		String str2 = sc.nextLine();
		System.out.print("Enter string 3 : ");
		String str3 = sc.nextLine();
		System.out.println();
		sc.close();
		
//		checks whether the string contains a substring
		System.out.println("contains() : "+str1.contains("i"));
		
//		returns the substring of the string
		System.out.println("substring() : "+str1.substring(7));
		
//		join the given strings using the delimiter
		System.out.println("join() : "+String.join("_",str1,str2));
		
//		compares two strings in the dictionary order
		System.out.println("compareTo() : "+str1.compareTo(str2));
		
//		compares two strings ignoring case differences
		System.out.println("compareToIgnoreCase() : "+str1.compareToIgnoreCase(str2));
				
//		replaces the specified old character with the specified new character
		System.out.println("replace() : "+str1.replace("a", "A"));
		
//		replaces all substrings matching the regex pattern
		System.out.println("replaceAll() : "+str1.replaceAll("bha", str2));
		
//		replace the first matching substring
		System.out.println("replaceFirst() : "+(str1+str2+str3).replaceFirst("bha", "RRR"));
		
//		returns the character present in the specified location
		System.out.println("charAt() : "+str1.charAt(2));
		
//		converts the string to an array of bytes
		System.out.println("getBytes() : "+str1.getBytes());
		
//		returns the position of the specified character in the string
		System.out.println("indexOf() : "+str1.indexOf("a"));
		
//		removes any leading and trailing whitespace
		System.out.println("trim() : "+str1.trim());
		
//		returns a formatted string
		int n1 = 47;
	    float n2 = 35.864f;
	    double n3 = 44534345.76d;

	    // 		format as an octal number
	    System.out.println(String.format("47 in octal: %o", n1));

	    // 		format as hexadecimal numbers
	    System.out.println(String.format("47 in hexadecimal: %x", n1)); 
	    System.out.println(String.format("47 in hexadecimal: %X", n1)); 

	    //		format as strings
	    System.out.println(String.format("47 as string: %s", n1)); 
	    System.out.println(String.format("35.864f as string: %s", n2)); 

	    // 		format in scientific notation
	    System.out.println(String.format("44534345.76d in scientific notation: %g", n3));
	    
//	    breaks the string into an array of strings(returns list of string in array format)
	    String vowels = "Bhargava+Ramana+Gidijala";
	    String[] result = vowels.split("\\+");
	    System.out.println("split() : " + Arrays.toString(result));
	    
//		converts the string to lower case
		System.out.println("toLowerCase() : "+str1.toLowerCase());
		
//		converts the string to upper case
		System.out.println("toUpperCase() : "+str1.toUpperCase());
		
//		returns the string representation of the specified argument
		System.out.println("valueOf() : "+String.valueOf(str1));
		
//		converts the string to a char array 
		char[] ch = str1.toCharArray();  
		for(int i=0;i<ch.length;i++){  
			System.out.println("toCharArray() : "+ch[i]);  
		}
		
//		checks whether the string matches the given length of string
		System.out.println("matches() : "+str1.matches("..a..a.a"));
		
//		checks if the string begins with the given string (case sensitive)
		System.out.println("startsWith() : "+str1.startsWith("B"));
		
//		checks if the string ends with the given string
		System.out.println("endsWith() : "+str1.endsWith("a"));
		
//		checks whether a string is empty or not
		String str6 = "";
		System.out.println("isEmpty() : "+str1.isEmpty());
		System.out.println("isEmpty() : "+str6.isEmpty());
		
//		ensures that all strings having the same contents use the same memory
		String a = "abc";
		String b = "abc";
		String c = "xyz";
		System.out.println("intern() for a,b : "+(a.intern()== b.intern()));
		System.out.println("intern() for b,c : "+(b.intern()== c.intern()));
		
//		checks whether the string is equal to each character or not (case sensitive)
		String x = "xyz";
		String y = "xYz";
		String z = "xyz";
		System.out.println("contentEquals() for x,y : "+x.contentEquals(y));
		System.out.println("contentEquals() for x,z : "+x.contentEquals(z));
		
//		returns a hash code for the string
		System.out.println("hashCode() : "+str1.hashCode());
		
//		returns a subsequence from the string (cuts and returns string between given indexes)
		System.out.println("subSequence() : "+str1.subSequence(3,7));
		
//		compares to strings are same or not		
		System.out.println("compareTo() : "+str1.equals(str2));
		System.out.println("compareTo() : "+str1.concat(str2));
		
//		returns true if two strings are equal even case is different
		System.out.println("equalsIgnoreCase() : "+str1.equalsIgnoreCase(str2));
		
//		returns length of the string		
		System.out.println("length() : "+str1.length());
	}
}


public class OperatorsEg {

	public static void main(String[] args) {
		int a = 4,b = 2;
		System.out.println("'a' value = "+a+" and 'b' value = "+b);
		System.out.println("\nFollowing are performed using Arithmetic Operators");
		System.out.println("addition : "+(a+b));
		System.out.println("substraction : "+(a-b));
		System.out.println("multiplicaiton : "+(a*b));
		System.out.println("divison : "+(a/b));
		System.out.println("modules div : "+(a%b));
		
		System.out.println("\nFollowing are performed using Logical Operators");
		System.out.println("Logical (a==4) && (b==2) : "+((a==4)&&(b==2)));
		System.out.println("Logical (a==4) && (b==2) : "+((a==2)&&(b==4)));
		
		System.out.println("\nFollowing are performed using Bitwise Operators");
		System.out.println("Bitwise NOT for a: "+(~a));
		System.out.println("Bitwise NOT for b: "+(~b));
		System.out.println("Bitwise a & b : "+(a&b));
		System.out.println("Bitwise a | b : "+(a|b));
		System.out.println("Bitwise a >> b : "+(a>>b));
		System.out.println("Bitwise a << b : "+(a<<b));
		System.out.println("Bitwise a << b : "+(a<<=b));
		System.out.println("Bitwise a << b : "+(a>>=b));
		System.out.println("Bitwise a |= b : "+(a|=b));
		
		System.out.println("\nFollowing are performed using conditional operators");
		System.out.println("a!=b : "+(a!=b));
		System.out.println("a>b : "+(a>b));
		System.out.println("a>=b : "+(a>=b));
		System.out.println("a<b : "+(a<b));
		System.out.println("a<=b : "+(a<=b));
		
		System.out.println("\nFollowing are pre-increment,post-increment and pre-decrement,post-decrement operators");
		System.out.println("a++ : "+(a++));
		System.out.println("b++ : "+(b++));
		System.out.println("++a : "+(++a));
		System.out.println("++b : "+(++b));
		
		System.out.println("\nTernary operator example");
		System.out.println("\n(a == 4)?'Its true?':'Its false? : '"+((a == 4)?true:false));
		
		System.out.println("\nFollowing are performed using Assignment Operators(NOTE: Assignment operators changes the value of variable)");
		System.out.println("Is a==b? "+(a==b));
		System.out.println("Is a!=b? "+(a!=b));
		System.out.println("Value of a+=b "+(a+=b));
		System.out.println("Value of a-=b "+(a-=b));
		System.out.println("Value of a*=b "+(a*=b));
		System.out.println("Value of a/=b "+(a/=b));
		System.out.println("Value of a%=b "+(a%=b));
		System.out.println("Value of a*=b "+(a*=b));
		System.out.println("Value of a&=b "+(a&=b));				
	}
}



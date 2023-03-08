class Adder{  
	static int add(int a,int b){
		return a+b;
	}  
	static String add(String sname,String fname,String lname){
		return sname+fname+lname;
	}  
}  

class MethodOverloading2{  
	public static void main(String[] args){  
		System.out.println(Adder.add(10,10));  
		System.out.println(Adder.add("Gidijala ","Bhargava ","Ramana"));  
	}
} 


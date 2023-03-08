class DefaultConstructor{  
	int id = 11;  
	String name = "GBR";  
	void display(){
		System.out.println(id+" "+name);
	}  
  
	public static void main(String args[]){  
		DefaultConstructor s1 = new DefaultConstructor();  
		DefaultConstructor s2 = new DefaultConstructor();  
		s1.display();  
		s2.display();  
	}  
}  


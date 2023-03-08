interface printable{  
	void print();  
}  
class InterfaceEg implements printable{  
	public void print(){
		System.out.println("Hello");
	}  
	  
	public static void main(String args[]){  
		InterfaceEg obj = new InterfaceEg();  
		obj.print();  
	}  
}  



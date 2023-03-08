class Animal1{  
	void eat(){
		System.out.println("eating...");
	}  
}  
class Dog2 extends Animal1{  
	void bark(){
		System.out.println("barking...");
	}  
}  
class singleInheritence{  
	public static void main(String args[]){  
		Dog2 d=new Dog2();  
		d.bark();  
		d.eat();  
	}	
}


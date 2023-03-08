class Animal3{  
	void eat(){
		System.out.println("eating...");
	}  
}  
class Dog3 extends Animal3{  
	void bark(){
		System.out.println("barking...");
	}  
}  
class BabyDog3 extends Dog3{  
	void weep(){
		System.out.println("weeping...");
	}  
}  
class multilevelInheritance{  
	public static void main(String args[]){  
		BabyDog3 d=new BabyDog3();  
		d.weep();  
		d.bark();  
		d.eat();  
	}
}  


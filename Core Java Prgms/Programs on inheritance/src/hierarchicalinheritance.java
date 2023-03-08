class Animal5{  
	void eat(){
		System.out.println("eating...");
	}  
}  
class Dog5 extends Animal5{  
	void bark(){
		System.out.println("barking...");
	}  
}  
class Cat5 extends Animal5{  
	void meow(){
		System.out.println("meowing...");
	}  
}  
class hierarchicalinheritance{  
	public static void main(String args[]){  
		Cat5 c = new Cat5();
		c.eat();
		c.meow();  
		Dog5 d = new Dog5();
		d.eat();
		d.bark();
	}
}  


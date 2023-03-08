class Animal{
	void sound() {
		System.out.print("This animal sounds like: ");
	}
}

class Cat extends Animal{
	void sound() {
		System.out.print("Meow Meow");
	}
}

public class MethodOverriding {

	public static void main(String[] args) {
		Cat obj  = new Cat();
		obj.sound();
	}
}

class A{
	void display() {
		System.out.println("Hello");
	}
}

class B extends A{
	void display() {
		super.display();
		System.out.println("Different kinds of statements");
	}
}

public class SuperKeywordEg extends B{

	public static void main(String[] args) {		
		B obj = new B();
		obj.display();
	}
}
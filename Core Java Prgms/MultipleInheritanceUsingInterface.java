interface first{
	void firstMethod();
}

interface second{
	void secondMethod();
}

class firstSecondClass implements first,second{
	public void firstMethod() {
		System.out.println("This is first method");
	}
	public void secondMethod() {
		System.out.println("This is second method");
	}
}

public class MultipleInheritanceUsingInterface extends firstSecondClass {

	public static void main(String[] args) {
		MultipleInheritanceUsingInterface mii = new MultipleInheritanceUsingInterface();
		mii.firstMethod();
		mii.secondMethod();
	}
}



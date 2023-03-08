interface AA{
	void method1();
	void method2();
}

class myClass implements AA{
	public void method1() {
		System.out.println("This is method 1");
	}
	public void method2() {
		System.out.println("This is method 2");
	}
}

class InterfaceEg extends myClass{

	public static void main(String[] args) {
		InterfaceEg ie = new InterfaceEg();
		ie.method1();
		ie.method2();
	}
}

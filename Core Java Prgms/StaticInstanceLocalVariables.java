class StaticInstanceLocalVariables {
	static int a = 10;
	int c;
	int d = 20;

	void display() {
		int b = 6;
		System.out.println(a);
		System.out.println(b);
		System.out.println(c);
		System.out.println(d);
	}

	public static void main(String args[]) {
		System.out.println(a); //because of static keyword we can able to print directly with s.o.p else we've to create instance(obj)like below, to call that method
		StaticInstanceLocalVariables obj = new StaticInstanceLocalVariables(); 
		obj.display();
		System.out.println(obj.c = 99);		
	}
}

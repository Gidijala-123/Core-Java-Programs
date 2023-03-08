interface AddSub{
	public void add(int a,int b);
	public void sub(int a,int b);
}
interface str{
	public void fullName(String fname,String lname);
}

class Body implements AddSub,str{
	public void add(int a,int b) {
		System.out.println(a+b);
	}
	public void sub(int a,int b) {
		System.out.println(a-b);
	}
	public void fullName(String fname,String lname) {
		System.out.println(fname+" "+lname);
	}
}

class MultipleInheritanceUsingInterface{
	public static void main(String args[]) {		
		Body obj = new Body();
		obj.add(10,5);
		obj.sub(10,5);
		obj.fullName("Bhargava", "Gidijala");		
	}
}




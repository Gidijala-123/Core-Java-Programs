public class Test{      
	 String name;
	 int rollno;
	 int age;
	 
	void info(){
	  System.out.println("Name: "+name);
	  System.out.println("Roll Number: "+rollno);
	  System.out.println("Age: "+age);
	}  	
	public static void main(String[] args) {
		Test student = new Test();
		student.name = "Bhargava";
		student.rollno = 123;
		student.age = 25;
		student.info();
	}
} 



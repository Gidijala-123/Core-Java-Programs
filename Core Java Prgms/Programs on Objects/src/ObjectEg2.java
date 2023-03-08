public class ObjectEg2{      
	 String name;
	 int rollno;
	 int age;
	 
	void info(){
	  System.out.println("Name: "+name);
	  System.out.println("Roll Number: "+rollno);
	  System.out.println("Age: "+age);
	}  
	
	public static void main(String[] args) {
		ObjectEg2 student = new ObjectEg2();
		student.info();
	}
}


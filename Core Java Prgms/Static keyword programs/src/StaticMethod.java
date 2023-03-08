class Student{  
     int rollno;  
     String name;  
     static String college = "ACET";  
     
     //static method to change the value of static variable  
     static void change(){  
    	 college = "Aditya";  
     }  
     
     //constructor to initialize the variable  
     Student(int r, String n){  
	     rollno = r;  
	     name = n;  
     }  
     
     //method to display values  
     void display(){
    	 System.out.println(rollno+" "+name+" "+college);
     }  
}  
//Test class to create and display the values of object  
public class StaticMethod{  
    public static void main(String args[]){  
    Student.change();//calling change method  
    //creating objects  
    Student s1 = new Student(120,"Bhargava");  
    Student s2 = new Student(121,"Gidijala");  
    //calling display method  
    s1.display();  
    s2.display();  
    }  
}  
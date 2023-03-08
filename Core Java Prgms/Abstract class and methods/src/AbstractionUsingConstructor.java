abstract class Bike{  
   Bike(){
	   System.out.println("This is normal method");
   }  
   abstract void run();  
   void changeGear(){
	   System.out.println("This is normal method");
   }  
 }  
//Creating a Child class which inherits Abstract class  
 class Honda extends Bike{  
	 void run(){
		 System.out.println("Inherited abstract method");
	 }  
 }  
//Creating a Test class which calls abstract and non-abstract methods  
 class AbstractionUsingConstructor{  
	 public static void main(String args[]){  
		 Bike obj = new Honda();  
		 obj.run();  
		 obj.changeGear();  
	 }  
}  
 
 
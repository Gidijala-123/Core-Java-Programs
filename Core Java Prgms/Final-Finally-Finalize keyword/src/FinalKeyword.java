class Bike
{  
  final void run(){
	  System.out.println("This bike is running");
	}  
}  
     
class FinalKeyword extends Bike
{  
   void running(){
	   System.out.println("Running safely with 100kmph");
   }  
     
   public static void main(String args[])
   {  
	   FinalKeyword fk= new FinalKeyword();  
	   fk.run();
	   fk.running();  
   }  
} 



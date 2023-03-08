public class StaticMethodVariableEg {
//	Static variable declaration
   static int x = 10;
   static int y;
   static void add(int z) {
      System.out.println("x = " + x);
      System.out.println("y = " + y);
      System.out.println("z = " + z);
   }
//	   Static initialization block (This is block which first will execute before running main method)
   static {
      System.out.println("Running static initialization block.");
      y = 15; //initializing static variable y
   }
   public static void main(String args[]) {
      add(20); //function calling
   }
}



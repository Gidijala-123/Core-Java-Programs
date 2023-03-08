class FinallyKeyword {
    public static void main(String[] args)
    {
        int k = 55;
        try {
            System.out.println("This is try block");
            int z = k / 55;
        }
  
        catch (ArithmeticException e) {
            System.out.println("This is catch block");
            System.out.println("Dividing by zero but caught");
        }
  
        finally
        {
            System.out.println("This is finally block");
        }
    }
}


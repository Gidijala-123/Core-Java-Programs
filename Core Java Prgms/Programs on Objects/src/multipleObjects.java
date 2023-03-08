public class multipleObjects {
  int x = 5;

  public static void main(String[] args) {
	multipleObjects myObj1 = new multipleObjects();  // Object 1
	multipleObjects myObj2 = new multipleObjects();  // Object 2
    System.out.println(myObj1.x);
    System.out.println(myObj2.x);
  }
}


class Vehicle {
	  protected String brand = "Raymonds";     
	  public void honk() {                   
	    System.out.println("Hai Bhargava");
	  }
}

class inheritanceEg2 extends Vehicle {
  private String modelName = "Mustang";  
  public static void main(String[] args) {
	  inheritanceEg2 myCar = new inheritanceEg2();
	  myCar.honk();
	  System.out.println(myCar.brand + " " + myCar.modelName);
  }
}
	
	
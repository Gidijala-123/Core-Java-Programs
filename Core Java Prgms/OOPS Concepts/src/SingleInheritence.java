class TraineeDetails {
	String name = "Bhargava";
	int Id = 123;
	private int Phone;
	
	void Trainee() {
		System.out.println("Trainee name is "+name+", his ID is "+Id);
	}

	public int getPhone() {
		return Phone;
	}

//	public void setPhone(int phone) {
//		Phone = phone;
//	}
	
	public void setPhone(int phone) {
		Phone = phone;
	}
}
class SingleInheritence extends TraineeDetails{
	public static void main(String args[]) {
		SingleInheritence obj = new SingleInheritence();
		obj.Trainee();
		System.out.println("My name is : "+(obj.name));
		System.out.println("My ID is : "+(obj.Id));
		obj.setPhone(98989898);
		System.out.println("My phone num is : "+(obj.getPhone()));
	}
}

class ParentTrainee {
	void TraineeDetails(String name,String place) {
		System.out.print(name+" ");
		System.out.println(place+" ");
	}
}
class ChildTrainee extends ParentTrainee{
	void TraineeDetails(String name,String place,int phone) {
		System.out.print(name+" ");
		System.out.print(place+" ");
		System.out.print(phone+" ");
	}
}

public class MethodOverloading extends ChildTrainee{

	public static void main(String[] args) {
		MethodOverloading d = new MethodOverloading();
		d.TraineeDetails("GBR","KKD");
		d.TraineeDetails("Bhargava","Kakinada",98989898);
	}
}


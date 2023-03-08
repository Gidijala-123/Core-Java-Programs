class Details1 {
	void TraineeDetails(String name,String place) {
		System.out.println(name);
		System.out.println(place);
	}
}
class Details2 extends Details1{
	void TraineeDetails(String name,String place,int phone) {
		System.out.println(name);
		System.out.println(place);
		System.out.println(phone);
	}
}

public class MethodOverloadingMain extends Details2{

	public static void main(String[] args) {
		MethodOverloadingMain d = new MethodOverloadingMain();
		d.TraineeDetails("gbr","kkd");
		d.TraineeDetails("Bhargava","Kakinada",98989898);
	}
}

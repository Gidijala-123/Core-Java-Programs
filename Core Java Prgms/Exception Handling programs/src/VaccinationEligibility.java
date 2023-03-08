import java.util.*;
public class VaccinationEligibility extends Exception {
	static void Eligibility(int age,int doses) {
		try {
			if(age > 18 && doses == 2) {
				throw new VaccinationEligibility();
			}
			else {
				System.out.println("Sorry you are not eligible to watch the movie..!");
			}
		}
		catch(VaccinationEligibility ve) {
			System.out.println("You are eligible to watch movie");
		}
	}
	public static void main(String[] args) {
		System.out.print("Enter your age : ");
		Scanner sc = new Scanner(System.in);
		int ageVal = sc.nextInt();
		System.out.print("How many doses you completed : ");
		int vaccineVal = sc.nextInt();
		Eligibility(ageVal,vaccineVal);
	}
}

import java.util.*;
class Shape{
	void n() {
		System.out.println("Area");
	}
}

class Circle extends Shape{
	 void Draw(int r) {
		System.out.println("Circle area = "+3.14*r*r);
	}
	void erase(int a) {
		System.out.println("Erase : "+a);
	}
}

class Triangle extends Circle {
	void Draw(int b,int h) {		
		System.out.println("Traingle area = "+0.5*b*h);
	}
	void erase(float a) {		
		System.out.println("Erase : "+a);
	}
}

class Square extends Triangle{
	void Draw(double b,double h) {
		System.out.println("Square area = "+2*b*h);
	}
	void erase(double a) {
		System.out.println("Erase : "+a);
	}
}
	
public class DrawAndErase extends Square{
	public static void main(String args[]) {	
		System.out.println("Which area u want to know ?");
		Scanner sc = new Scanner(System.in);
		String name = sc.nextLine();
		
		switch(name) {
			case "circle":
				Circle obj1=new Circle();		
				obj1.erase(4);
				obj1.Draw(4);
				break;
			case "triangle":
				Triangle obj2=new Triangle();		
				obj2.erase(4);
				obj2.Draw(4,4);
				break;
			case "square":
				Square obj3 = new Square();
				obj3.erase(10.5);
				obj3.Draw(12.5,20.5);
				break;
			default:System.out.println("Invalid choice");		
		}
	}
}



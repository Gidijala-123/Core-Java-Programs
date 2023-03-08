public class Table3UsingLoops {

	public static void main(String[] args) {
		int n = 5,i;
		
//		for loop
		for(i=1; i<=10;i++) {
			System.out.println("3"+" * "+ i + " = "+ i*3);
		}
		System.out.println();
		
//		while condition
		int j =1;
		while(j<=10) {
			System.out.println("5"+" * "+ j + " = "+ j*5);
			j++;
		}
		System.out.println();
		int k = 1;
		
//		do while condition
		do {
			System.out.println("6"+" * "+ k + " = "+ k*6);
			k++;
		}
		while(k<=10);

	}
}

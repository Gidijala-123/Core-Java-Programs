import java.util.*;
public class CollectionsList {
	public static void main(String args[]) {
		ArrayList<String> animals = new ArrayList<>();
		animals.add("lion");
		animals.add("tiger");
		animals.add("zebra");
		System.out.println("Items in arraylist : "+animals);
		System.out.println("Length of arraylist : "+animals.size());
		System.out.println("Add new item : "+animals.set(2, "elephant"));
		System.out.println("After new Items : "+animals);
		for(String str : animals) {
			System.out.println("loop of items : "+str);
		}
	}
}

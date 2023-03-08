class ConstructorOverloadingEg{
	int id;
	String name;
	String place = "Spinebiz";
	
	ConstructorOverloadingEg(int id,String name){
		this.id = id;
		this.name = name;
	}
	ConstructorOverloadingEg(int id,String name,String place){
		this.id = id;
		this.name = name;
		this.place = place;
	}
	void display() {
		System.out.println("Im "+name+" with ID "+id+" Im from "+place);
	}
	
	public static void main(String args[]) {
		ConstructorOverloadingEg obj1 = new ConstructorOverloadingEg(121,"Bhargava");
		ConstructorOverloadingEg obj2 = new ConstructorOverloadingEg(123,"Gidijala","Kakinada");
		obj1.display();
		obj2.display();
	}
}


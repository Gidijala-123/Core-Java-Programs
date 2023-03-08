class Banking{  
	int getRateOfInterest(){
		return 0;
	}  
}  
//Creating child classes.  
class SBIBank extends Banking{  
	int getRateOfInterest(){
		return 8;
	}  
}  
  
class ICICI extends Banking{  
	int getRateOfInterest(){
		return 7;
	}  
}  
class AXIS extends Banking{  
	int getRateOfInterest(){
		return 9;
	}  
}  
//Test class to create objects and call the methods  
class MethodOverriding2{  
	public static void main(String args[]){  
		SBIBank s=new SBIBank();  
		ICICI i=new ICICI();  
		AXIS a=new AXIS();  
		System.out.println("SBI Rate of Interest: "+s.getRateOfInterest());  
		System.out.println("ICICI Rate of Interest: "+i.getRateOfInterest());  
		System.out.println("AXIS Rate of Interest: "+a.getRateOfInterest());  
	}  
} 
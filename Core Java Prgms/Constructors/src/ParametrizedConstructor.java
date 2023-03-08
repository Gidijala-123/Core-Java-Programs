class ParametrizedConstructor{  
    int id = 11;  
    String name = "GBR"; 
    
    ParametrizedConstructor(int i,String n){  
	    id = i;  
	    name = n;  
    }  
    
    void display(){
    	System.out.println(id+" "+name);
    }  
   
    public static void main(String args[]){  
	    ParametrizedConstructor s1 = new ParametrizedConstructor(120,"Bhargava");  
	    ParametrizedConstructor s2 = new ParametrizedConstructor(121,"Gidijala");   
	    s1.display();  
	    s2.display();  
   }  
} 


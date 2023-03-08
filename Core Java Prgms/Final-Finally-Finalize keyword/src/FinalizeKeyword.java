public class FinalizeKeyword 
{
    public static void main(String[] args) 
    {
    	FinalizeKeyword obj = new FinalizeKeyword();
        obj = null;
        System.gc();
        System.out.println("Done");
        
    }
    
    @Override
    protected void finalize()
    {
        System.out.println("Before Destory the Object perform some activity");
        System.out.println("Release connection");
        System.out.println("Close network connection");
    }
}


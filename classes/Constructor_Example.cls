public class Constructor_Example 
{
     public static void Constructor_Example()
     {
         System.debug('I am in constructor class');
     }
    public static void Constructor_Example(integer A,integer B)
     {
         integer result = A+B;
         System.debug('I am in constructor class'+result);
     }
    
   public void show()
    {
        system.debug('In method class');
    }
}
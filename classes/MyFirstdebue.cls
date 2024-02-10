public class MyFirstdebue 
{
    Object obj;
    Integer i = (Integer)obj;
   public void Addition(decimal A,integer i)
    {
        decimal sum = A + i;
        system.debug('sum of two number is ' +sum);
        System.assertEquals(sum, i);
    }
}
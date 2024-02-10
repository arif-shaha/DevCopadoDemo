public class Future_Apex18Sep
{
        @future
       static void Method1()
       {
           System.debug('Line 1 executed in method1');
           System.debug('Line 2 executed in method1');
           System.debug('Line 3 executed in Method1');
       }
        @future
       static void Method2()
       {
           System.debug('Line 1 executed in method2');
           System.debug('Line 2 executed in method2');
           System.debug('Line 3 executed in Method2');
       }
    public void Method3()
        
       {
           System.debug('Line 1 executed in method3');
           Method2();
           Method1();
           System.debug('Line 2 executed in method3');
           System.debug('Line 3 executed in Method3');
       }
 }
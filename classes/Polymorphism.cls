public class Polymorphism 
{
      
    public void method()
    {
        system.debug('non parameter method executed');
    }
    public void method(integer Num1, integer Num2)
    {
        integer ADD=Num1+Num2;
        system.debug('parameter method executed'+ADD);
    }
}
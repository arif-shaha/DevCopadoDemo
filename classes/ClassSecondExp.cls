public class ClassSecondExp {
   public integer result;//class variable
    public void Addition(integer a,integer b){
        Integer Add; //local variable
        Add=a+b;
        system.debug('Addition of two number'+Add);
        substraction(a,b);
    }
    public void substraction(integer a,integer b)
    {
        integer Sub;
        Sub=a-b;
        system.debug('substraction of two number'+Sub);
        
    }
}
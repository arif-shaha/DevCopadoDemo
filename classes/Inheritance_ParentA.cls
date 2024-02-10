public VIRTUAL class Inheritance_ParentA 
{
    public integer Num1=10;
    public integer Num2=20;
    integer sum;
    
    public void addition()
    {
        sum=Num1+Num2;
        System.debug('sum of number is' +sum);
    }
}
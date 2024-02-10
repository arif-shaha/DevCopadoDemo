public class ClassAddition 
{
    public Integer A = 10;
    Integer B = 20;
    string op = 'b';    
    Integer Add;
    
    Public void main()
    {
        If(op =='a')
        {
            Addition1();
        }
        else if(op=='b')
        {   
        Substraction1();
        }
        else
        {
        Multiplication();
        }
        
    }
    Public void Addition1()
    {
        Add = A+B;
        System.debug('Addition is' +Add);
    }
    Public void Substraction1()
    {
        Integer Sub;
        Sub = A-B;
        system.debug('Sub is' +Sub);
    }
    Public void Multiplication()
    {
        Integer Mult;
        Mult = A*B;
        System.debug('Multiplication is '+Mult);
    }
}
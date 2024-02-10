public class NonExposedLogic 
{
    public void main(string op,integer Num1,Integer Num2,Integer Num3)
    {
        calc(op,Num1,Num2,Num3);
    }
    
   void calc(string op,integer Num1,Integer Num2,Integer Num3)
   {
       if(op == 'G')
       {
           GreaterNum(Num1,Num2,Num3);
       }
       else if(op =='S')
       {
           SmallerNum(Num1,Num2,Num3);
       }
       else
       {
           system.debug('invalid input given');
           system.debug('invalid input given');
       }
   }
    void GreaterNum(integer Num1,Integer Num2,Integer Num3)
    {
        if(Num1 > Num2 && Num1 > Num3)
        {
            system.debug('Number 1 is greater ' +Num1);
        }
        else if(Num2 > Num1 && Num2 > Num3)
        {
            system.debug('Number 2 is greater ' +Num2);
        }
        else
        {
            system.debug('Number 3 is greater ' +Num3);
        }
        
    }
    
    void SmallerNum(integer Num1,Integer Num2,Integer Num3)
    {
        if(Num1 < Num2 && Num1 < Num3)
        {
            system.debug('Number 1 is smaller ' +Num1);
        }
        else if(Num2 < Num1 && Num2 < Num3)
        {
            system.debug('Number 2 is smaller ' +Num2);
        }
        else
        {
            system.debug('Number 3 is smaller ' +Num3);
        }
        
    }
        
}
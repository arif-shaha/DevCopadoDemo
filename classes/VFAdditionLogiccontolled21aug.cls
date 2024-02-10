public class VFAdditionLogiccontolled21aug 
{
    public integer Num1 {get;set;}
    public Integer Num2 {get;set;}
    public Integer Num3 {get;set;}
    public Integer Addition {get;set;}
    public Integer Subtract {get;set;}
    
    public void AdditionCal()
    {
        Addition=Num1+Num2-Num3;
    }
    public void SubtractionCal()
    {
        Subtract=Num1-Num2;
    }
}
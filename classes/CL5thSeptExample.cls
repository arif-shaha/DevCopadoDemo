public class CL5thSeptExample 
{
         Account Acc;
    Public CL5thSeptExample(ApexPages.StandardController c)
    { 
        system.debug(c.getRecord());
        Acc=(Account)c.getRecord();
    }
        
    public void CreateCustomAcc()
    {
        Insert Acc;
    }
}
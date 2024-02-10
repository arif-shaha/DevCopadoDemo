public class EmpInsertUpdateHandler 
{
    public static void StatusUpdInsert(List<Employee__c> emp,Boolean Ins,Boolean Upd)
    {
        If(Ins==true)
                {
                    For(Employee__c eachemp : emp)
                   {
                    eachemp.Status__c='New Employee';
                   }
                }
    else if(Upd==true)
                {
                    For(Employee__c eachemp : emp)
                   {
                    eachemp.Status__c='Updated Employee';
                   }
                }
    }
}
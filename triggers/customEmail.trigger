trigger customEmail on MyCustomer__c (After update) 
{
   // List<MyCustomer__c> TNC = Trigger.New;
   // List<MyCustomer__c> TOC = Trigger.Old;
    For(MyCustomer__c ENC:Trigger.New)
    {
        For(MyCustomer__c EOC:Trigger.Old)
        {
            If(ENC.Id == EOC.Id)
            {
                If(EOC.EMAIL__c != 'no@gmail.com')
                {
                    if(EOC.EMAIL__c != ENC.EMAIL__c)
                    {
                        ENC.EMAIL__c.adderror('Existing Email id cannot be changed');
                    }
                }
            }
        }
    }
    
}
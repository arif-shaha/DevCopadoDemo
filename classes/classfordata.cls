public with sharing class classfordata 
{
    @AuraEnabled(Cacheable = true)
   public static List<Account> getdatafromdb()
   {
        list<Account> allacc = [Select id, Name, BillingCity,Phone,Fax from Account limit 6];
        return allacc;

   }
}
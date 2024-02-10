public with sharing class ImperativNovClass 
{
    @auraEnabled
    public static list<account> getaaccountdata()
    {
        List<Account> Allacc = [Select Name,Id,BillingCity,Fax from Account];
        return Allacc;
    }
    
}
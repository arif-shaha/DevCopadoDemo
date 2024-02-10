public with sharing class Nov4Class
{   
    @AuraEnabled(cacheable=true)
    public static List<Account> allacount()
    {
        list<account> Allacc = [Select name,id,BillingCity,phone from account];
        return Allacc;
    } 

}
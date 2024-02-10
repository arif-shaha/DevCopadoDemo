public with sharing class passingParameterNov6 
{   
    @AuraEnabled(cacheable = true)
    public static list<account> getlistacc(string searchKey)
    {
        String searchVal = '%'+searchKey+'%';
        List<account> Acc = [Select Id, name, phone from Account where Name Like : searchVal];
        return Acc;
    }
}
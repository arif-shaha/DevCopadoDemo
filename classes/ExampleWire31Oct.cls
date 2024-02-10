public with sharing class ExampleWire31Oct 
{
    @AuraEnabled(cacheable = true)
    public static string getdatafromclass()
    {   
        string s ='Arif is writing Apex class';
        return s;
    }
}
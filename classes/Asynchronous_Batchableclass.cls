public class Asynchronous_Batchableclass Implements Database.Batchable<SObject>
{
    public Database.QueryLocator Start(Database.BatchableContext CC)
    { 
        String Q ='Select id,Name,Fax,MailingCity From Contact';
        Return Database.getQueryLocator(Q);
    }
    Public void Execute(Database.BatchableContext BAC,List<Contact> AD)
    {
        For (Contact EC : AD)
        {
            EC.MailingCity='Navi Mumbai';
            Update EC;
            
        }
    }
    public void finish(Database.BatchableContext BAC)
    {
        System.debug('Batch is executed');
    }

}
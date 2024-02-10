public class Sep6th2Example Implements Database.Batchable <SObject>
{
     Public Database.QueryLocator start(Database.BatchableContext cc)
    {
        String st = 'Select LastName,FirstName,MailingCity,fax,phone From Contact';
        return database.getQueryLocator(st);
    }
    public void execute(Database.BatchableContext AA,List<Contact> AD)
    {
        For(Contact EC:AD)
        {
           EC.MailingCity='Navi Mumbai';
            Update EC;
        }
    }
    public void finish(Database.BatchableContext BB)
    {
        system.debug('Batch Is Executed');
    }
}
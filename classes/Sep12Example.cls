public class Sep12Example Implements Database.Batchable<Sobject>
{
    public Database.QueryLocator start(Database.BatchableContext BAC)
    { 
        String Q ='SELECT Id,Subject,Priority From Task';
        Return Database.getQueryLocator(Q);
    }
       
    public void Execute(Database.BatchableContext BAC,List<Task> ADB)
    {
        For(Task EDB:ADB)
        {
            EDB.Priority = 'Normal';
            Update EDB;
        }
    }
    
    public void Finish(Database.BatchableContext BAC)
    {
        
      AsyncApexJob Aj =[SELECT id, TotalJobItems ,status,NumberOfErrors,JobType,JobItemsProcessed,CompletedDate From AsyncApexJob where id=:BAC.getJobId()];
        System.debug(Aj);
    }

}
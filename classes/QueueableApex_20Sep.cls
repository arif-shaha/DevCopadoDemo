public class QueueableApex_20Sep Implements Queueable
{
       public void Execute(queueableContext QC)
       { 
           List<Task> AllTask = [Select Id,Priority,status from Task];
           For(Task ET: AllTask)
           {
               ET.Priority ='High';
               Update ET;
           }                        
       }
    
    Public void method()
    {
        System.Debug('Execute serial method');
    }
}
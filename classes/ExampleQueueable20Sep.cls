public class ExampleQueueable20Sep Implements Queueable
{
   Public Void Execute(System.QueueableContext Qc)
   {
       List<task> Alltask = [Select id,Subject,Priority,Status from task];
       for(task ET : Alltask)
       {
           ET.Priority = 'Low';
           Update ET;
       }
   }
    Public void Method()
    {
        System.debug('This is another method');
    }
}
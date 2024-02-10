public class Scheduleapex_SEP13 Implements Schedulable
{
    public void Execute(SchedulableContext SC)
    {
        List<Task> Alltask =[select Id, Subject,Priority,Status from Task];
            for(Task Eachtask : Alltask)
             {
                 Eachtask.Priority='High';
                 Update Eachtask;
             }
    }
}
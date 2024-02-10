trigger EmpInsertUpdate on Employee__c (before insert,before Update) 
{
   // List<Employee__c> emp = Trigger.new;
   // Boolean Ins=Trigger.IsInsert;
    // Boolean Upd =Trigger.IsUpdate;
    EmpInsertUpdateHandler.StatusUpdInsert(Trigger.new,Trigger.IsInsert,Trigger.IsUpdate);
}
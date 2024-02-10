trigger ContactTestingTrigger on Contact (before insert)
{    
    List<Contact> AllCont = Trigger.New;
    ContactTesting.TestHandler(AllCont);
}
trigger EmailTrg on Contact (before insert) 
{  
   //List<Contact> Allcont =Trigger.new;
   HandlerEmailTrg.EmailClass(Trigger.new);
   
}
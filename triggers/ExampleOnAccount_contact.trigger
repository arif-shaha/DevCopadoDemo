trigger ExampleOnAccount_contact on Account (After insert) 
{
       List<Account> allacc = Trigger.new;
       For(Account Eachacc:allacc)
       {
            Contact c = new contact();
            c.LastName = Eachacc.Name;
            c.Phone = Eachacc.Phone;
            c.Fax = Eachacc.Fax;
            c.MailingCity = Eachacc.BillingCity;
           
           Insert c;
       }      
        
}
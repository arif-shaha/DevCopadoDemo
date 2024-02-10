public class Sep8th_BatchableClass Implements Database.Batchable<SObject> 
{
    public Database.QueryLocator Start(Database.BatchableContext BAC)
    {
        String Q = 'Select id,LastName, FirstName, phone,city From Lead';
        Return Database.getQueryLocator(Q);
    }    
    public void Execute(Database.BatchableContext BAC,List<Lead> AD)
    {
        For(Lead ED : AD)
        {
            If(ED.city == null)
            {
                ED.city= 'Mumbai';
                Update ED;
            }
        }   
    }
  
    public void Finish (Database.BatchableContext BAC )
      {
          //step 1:call massaging namespace
          Messaging.SingleEmailMessage M = New Messaging.SingleEmailMessage();//composed msg
          
          //step 2 :Address list to,cc,bcc
          List<String> Toadd = New List<String>{'arif.shaha@gmail.com','arif.shaha1991@gmail.com'};
          List<String> ccadd = New List<String>{'aalim.shaha26@gmail.com'};
          List<String> bccad = New List<String>{'g.v.darekar@gmail.com'};
              
          // Step 3: Write body msg
          M.setToAddresses(Toadd);
          M.setBccAddresses(bccad);
          M.setCcAddresses(ccadd);
          M.setSubject('Apex Batch successfully write batchable class');
          M.setPlainTextBody('Batch apex is tast executed');
          
                //step 4 send email
          List<Messaging.Email> AllEmail =New List<Messaging.Email>();
          AllEmail.add(M);
          Messaging.sendEmail(AllEmail);
         }
}
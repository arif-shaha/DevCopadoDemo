public class MultipleEmail_SendingBYSchedule Implements Schedulable
{
    public void Execute(SchedulableContext C)
    {
        List<Contact> AllContact = [Select Id,Lastname,FirstName,Email from Contact];
        List<Messaging.Email> AllEmail = New List<Messaging.Email>();
        For(Contact EachCon : AllContact)
        {
            If(EachCon.Email != Null)
            {
                Messaging.singleEmailMessage EM =New Messaging.singleEmailMessage();
                String EachConEmail = EachCon.Email;
                List<String> Toadd =  New List<String>{EachConEmail,'arif.shaha@gmail.com'};
                 String emailSub = 'Hello' +EachCon.FirstName+ ',Wishing Happy New year.....';
        		String PlainBody = 'Dear'+EachCon.FirstName+'This is year will goes for very special for you and your family'+EachCon.Lastname+'Thank you';
                EM.setSubject(emailSub); 
                EM.setplainTextBody(PlainBody);
                EM.setToAddresses(Toadd);
                
                AllEmail.add(EM);
            }
        }
        Messaging.sendEmail(AllEmail);
    }
}
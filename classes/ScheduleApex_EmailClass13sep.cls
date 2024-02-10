public class ScheduleApex_EmailClass13sep Implements Schedulable
{
      public void Execute(SchedulaBLEContext SC)
      {
         Messaging.SingleEmailMessage EM = New Messaging.SingleEmailMessage();
          List<String> Toadd = New List <String>{'arif.shaha@gmail.com'};
          EM.setToaddresses(Toadd);
          EM.setSubject('Happy New Year !!!!!');
          EM.setPlainTextBody('Hi Buddy new wished happy BirthDay');
          
          List<Messaging.Email> AllEmail = New List<Messaging.Email>();
          AllEmail.add(EM);
          Messaging.sendEmail(AllEmail);
      }
}
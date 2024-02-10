public class Trigger_Handler 
{
       public static void HandleClass()
       {
               Messaging.singleEmailMessage MS = New Messaging.singleEmailMessage();
               List<String> Allemail =new List<String>{'arif.shaha@gmail.com'};
               MS.setToaddresses(Allemail);
               MS.setsubject('Sending email Trigger Email msg');
               MS.setplainTextBody('Hiccccc i am  sending mails for trigger ');    
               List<Messaging.Email> me = New List<Messaging.Email>();
               me.add(MS);
               Messaging.sendEmail(me);     
       }
}
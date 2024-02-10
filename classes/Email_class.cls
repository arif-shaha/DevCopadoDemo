public class Email_class 
{
       public void SendEmail()
       {
           Messaging.SingleEmailMessage SM = New Messaging.SingleEmailMessage();
           List<String> Toaddress = New List<String>{'arif.shaha@gmail.com'};
           List<String> Ccadress = New List<String>{'arif.shaha1991@gmail.com'};
           List<String> Bccadress = New List<String>{'aalim.shaha26@gmail.com'};
               
            string Sub = 'Email message of apex class template';
            string TxtBody ='Dear friend i am glad to inform you i am able to do write email class template';
           
           SM.setToAddresses(Toaddress);
           SM.setToAddresses(Ccadress);
           SM.setToAddresses(Bccadress);
           SM.setSubject(Sub);
           SM.setPlainTextBody(TxtBody);
           List<Messaging.Email> ME = New List<Messaging.Email> ();
           ME.add(SM);
           Messaging.sendEmail(ME);
          }
               
     }
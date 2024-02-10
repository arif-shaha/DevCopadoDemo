public class HandlerContactRecursive 
{	
      Static Boolean F = false;
      Public Static Void createCont()
      {
          If(F == false)
          { 
            F = True;
            Contact c = New Contact();
            c.FirstName = 'Testing Recursive1';
            c.LastName = 'recursive trigger';
            c.Email = 'arif.shaha@gmail.com';
            c.Phone ='4512378';
            Insert c;
          }
      }
}
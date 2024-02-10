@isTest
private class ContactTest1 
{    
       @isTest
       Private static void TestCase1()
     {
         Contact C = New Contact();
         
         C.FirstName = 'Ram';
         C.LastName = 'Verma';
         C.Phone = '23456789';
         C.Fax = '568923';
		 Insert C;
         C = [Select email From Contact Where id =: C.id];
         System.assertEquals('yes@gmail.com', C.Email);
        
     }
}
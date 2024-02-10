public class ContactTesting 
{
  public static void TestHandler(List<Contact> AllCont)
  {
      For(Contact EachCont : AllCont)
    {
        EachCont.Email ='yes@gmail.com';
        EachCont.Phone ='77777';
    }
  }
}
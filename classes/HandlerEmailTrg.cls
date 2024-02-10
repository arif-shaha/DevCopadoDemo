public class HandlerEmailTrg 
{
    public static void EmailClass(List<Contact> AC)
    {
         For(Contact EC : AC)
       {
        System.debug(EC);
        EC.Email = 'no@gmail.com';
        EC.Phone = '999999';
        System.debug(EC);
       }
    }
}
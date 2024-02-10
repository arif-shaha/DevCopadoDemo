public class MyClass {
    integer A= 10;
    Integer B= 20;
    string op ='b';
    Public void call()
    {
        If(op == 'a')
        {
            Add_method();
        }
    else if(op =='s')
    {
        Sub_method();
    }
    else
    {
        system.debug('no input given');
    }
  }
    public void Add_method()
    {
        Integer Add;
        Add =A+B;
        System.debug('Addition is '+Add);
       
    }
   void Sub_method()
   {
       Integer Sub;
       Sub = B-A;
       System.debug('Substraction is '+Sub);
   }
    
}
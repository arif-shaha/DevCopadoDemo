trigger ContactRecursive on Contact (before insert) 
{
        
   HandlerContactRecursive.createCont();    
}
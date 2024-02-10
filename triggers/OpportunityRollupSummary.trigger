trigger OpportunityRollupSummary on Opportunity (After insert)  
{   
    Set<id> IDS = New Set<id>();
    List<Opportunity> Allop = Trigger.New;
    For(Opportunity op :Allop)
    {
       Id OPID = op.AccountId;
       IDS.add(OPID);      
    }
    List<Account> AC = [Select id, Name, All_Opportunity__c,All_Amount__c,(Select name,Amount,id from opportunities) from Account Where id=:IDS];
    For(Account A : AC)
    {
        A.All_Opportunity__c = A.opportunities.size();
         Decimal Sum = 0;
        For(opportunity P :A.opportunities)
        {
            Sum =Sum + P.Amount;
        }
        A.All_Amount__c = Sum;
    }
    Update AC;  
}
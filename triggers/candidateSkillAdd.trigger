trigger candidateSkillAdd on Candidate__c (after insert) {
    List<Candidate__c> cand = Trigger.New;
    For(Candidate__c EachCan:cand){
        
        Skill__c skill = New Skill__c();
        skill.Name=EachCan.Skill_Set__c;
        insert skill;
    }

}
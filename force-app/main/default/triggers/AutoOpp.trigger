trigger AutoOpp on Account(after insert)
{
List<Opportunity> newOps=new List<Opportunity>();
    for(Account acc:Trigger.new)
    {
        Opportunity opp=new Opportunity();
        opp.name=acc.Name+'Opportunity';
        opp.StageName='Prospecting';
        opp.CloseDate=date.today()+90;
        opp.AccountID=acc.Id;
        newOps.add(opp);
  }
insert newOps;
}
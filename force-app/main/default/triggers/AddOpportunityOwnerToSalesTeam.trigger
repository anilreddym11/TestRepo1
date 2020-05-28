trigger AddOpportunityOwnerToSalesTeam on Opportunity (after insert){
List<OpportunityTeamMember> Optm = new List<OpportunityTeamMember>();
for(Opportunity opp:Trigger.New)
{
if(Opp.Probability==20)
{
OpportunityTeamMember otm=new OpportunityTeamMember();
otm.USERID = Opp.OwnerId;
otm.TEAMMEMBERROLE='Account Manager';
optm.add(otm);
}
}
insert Optm;
}
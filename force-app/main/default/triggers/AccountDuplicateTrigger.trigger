trigger AccountDuplicateTrigger on Account (before insert, before update){
for(Account a:Trigger.new)
{

List<Account> acc=[Select id from Account where Name=:a.Name];
if(acc.size()>0)
{
a.addError('You Cannot Create the Duplicate Account');
}
}
}
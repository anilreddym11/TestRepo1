trigger HelloWorld on Account (before insert, before update) 
{
for(Account a:Trigger.New)
{
if(a.Hello__c!='Hello')
{
a.Hello__c='World';
}
}
}
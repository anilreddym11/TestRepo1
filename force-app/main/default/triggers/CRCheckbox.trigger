trigger CRCheckbox on Contact (before insert) {
for(Contact c:Trigger.new)
{
if(c.Active__c==True)
{
c.Contact_Relationship__c=True;
}
else
{
c.Contact_Relationship__c.addError('The Contact Relationship must be true if it is active');
}
}
}
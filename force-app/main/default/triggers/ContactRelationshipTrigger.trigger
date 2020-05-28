trigger ContactRelationshipTrigger on Contact (after insert, after update, after delete, after unDelete) {
List<Contact_Relationship__c> listCRRecord=new List<Contact_Relationship__c>();
for(Contact con:Trigger.New){
 if(con.Contact_Relationship__c==True)
     {
         Contact_Relationship__c CRRecord=new Contact_Relationship__c();
         CRRecord.Name=con.LastName;
         CRRecord.Contact__c=con.id;
         listCRRecord.add(CRRecord);
     }
}
insert listCRRecord;

}
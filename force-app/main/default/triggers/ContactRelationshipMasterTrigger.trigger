/**
    @Author      : Anil
    @Created Date: 8/31/2011
    @description : This is the master trigger for the ContactRelationships custom object which handles all necessary trigger events and delegates logic to the ContactRelationshipMasterHandler class.
*/

trigger ContactRelationshipMasterTrigger on Contact_Relationship__c(before update) 
{  
    
  if(trigger.isBefore)
    {
         
        if(trigger.isUpdate)
        {
            //call the handler for the before update trigger event
            ContactRelationshipMasterHandler  ConRelUpd = New ContactRelationshipMasterHandler();
            ConRelUpd.onBeforeUpdate(trigger.New);
        }
    } 
}
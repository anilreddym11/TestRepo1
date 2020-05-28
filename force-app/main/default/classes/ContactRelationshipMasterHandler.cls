public class ContactRelationshipMasterHandler{

/**
  * @author Original: Chaitanya Pattamatta (501988930) Wipro
  * @date Original: 30 Nov 2011
  * @description Method to handle the before update trigger event on the Contact Relationship SObject. 
  * @param Con_Rel A list of Contact Relationships being updated.    
 */
    public void onBeforeUpdate(list<Contact_Relationship__c> Con_Rel)
    {
        
        if(Con_Rel != null && Con_Rel.size() > 0)
        {
            //update GE Employee Name (Name) whenever the record Owner gets changed
            ContactRelationshipDML conRel = new ContactRelationshipDML();
           conRel.updateContactRelationshipNameByOwner(Con_Rel);
        }
    }



}
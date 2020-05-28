/**
* @author Original: Chaitanya Pattamatta (501988930) Wipro
* @date Original: 17 Nov 2011
* @description Class to handle delegated DML operations for Contact Relationship object.
*/
public class ContactRelationshipDML {
    
    public ContactRelationshipDML()
    {
    }
    
/**
  * @author Original: Chaitanya Pattamatta (501988930) Wipro
  * @date Original: 14 Jul 2011
  * @description Method to creates Contact Relationship records for the current user for all of the Contacts provided.
  * @param List_Contacts A collection of Contacts to create Contact Relationships for.
*/
 public void createContactRelationshipsByContact(list<Contact> List_Contacts)
    {
        list<Contact_Relationship__c> ConRelList = new list<Contact_Relationship__c>();
    
        for(Contact newconts:List_Contacts)
        {
            if(newconts.Contact_Relationship__c == true)
            {
                Contact_Relationship__c ConRel = new Contact_Relationship__c(Contact__c = newconts.Id);
                ConRelList.add(ConRel);
            }
        }    
        insert ConRelList;
    }
 
    public void updateContactRelationshipNameByOwner(list<Contact_Relationship__c> cont_Rel)
    {
        map<Id,Id> map_Id_Own = new map<id,id>();
        map<Id,string>map_id_Name = new map<id,string>();
        set<id>Idset = new set<id>();

        for(Contact_Relationship__c List_recs:cont_Rel)
        {
            Idset.add(List_recs.Ownerid);
        }
        list<user> u=[select id,Name from user where id in:Idset];
    
        for(user list_users:u)
        {
            map_id_Name.put(list_users.Id,list_users.Name);
        }
        
        if(u!=null && u.size()>0)
        {
            for(Contact_Relationship__c List_recs:cont_Rel)
            {
                if (List_recs.Ownerid!=null)
                {
                    List_recs.Owner_Lookup__c = List_recs.Ownerid;       
                    List_recs.Name = map_id_Name.get(List_recs.Ownerid);        
                }
            } 
        }
     }   
}
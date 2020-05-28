public with sharing class MultipleContactRelationships {
public MultipleContactRelationships(ApexPages.StandardController controller) {
}
public Account acc{get;set;}
public List<cContact> ContactList{get;set;}
  public List<cContact> getContacts() {
        if(contactList == null) {
            contactList = new List<cContact>();
            for(Contact c: [select Id, Name, Email, Phone from Contact where Accountid=:ApexPages.currentPage().getParameters().get('id') and Contact_Relationship__c=false]) {
                // As each contact is processed we create a new cContact object and add it to the contactList
                contactList.add(new cContact(c));
            }
        }
        contactList=null;
        return contactList;
    }

public PageReference ProcessSelected(){
   List<Contact> selectedContacts=new List<Contact>();
   for(cContact cCon: getContacts()) {
            if(cCon.isselected == true) {
                selectedContacts.add(cCon.con);
            }
        }
        System.debug('DDDDDDDDDDDDDDDDD' +selectedContacts);
return null;
}

public class cContact{
    public Contact Con{get;set;}
    public Boolean isSelected{get;set;}
    public cContact(Contact c){
        Con=c;
        isSelected=false;
    
    
    }

}
}
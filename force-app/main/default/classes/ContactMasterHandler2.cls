Public Class ContactMasterHandler2 {


    public void createTrainingsByContact(list<Contact> List_Contacts)
    {
      list<training__c> trainlist = new list<training__c>();
    
        for(Contact newconts:List_Contacts)
        {
            if(newconts.Active__c == true)
            {
                training__c t = new training__c(Faculty_Name__c = newconts.id);
              
               trainlist.add(t);
                
            }
        }   
        
    insert trainlist;
    }
     




}
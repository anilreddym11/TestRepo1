trigger ContactDuplicateTrigger on Contact (before insert, before update) {
 
   for (Contact c : Trigger.new){
      

     Contact[] contacts= [select id from Contact where FirstName = :c.FirstName]; //and LastName = :c.LastName and Email = :c.Email];
     if (contacts.size() > 0) {
       c.LastName.addError('Contact cannot be created - Contact already exists');
      } 


    
    }
}
public with sharing class ContactsForAccount_Controller {
public List<Contact> ContactList{get;set;}

public ContactsForAccount_Controller(){
}
Public List<Contact> getlistContacts(){
    ContactList=[Select Id, Name,Title,Email,Phone from Contact Where AccountId=: ApexPages.currentPage().getParameters().get('id')];
    return ContactList;

}
}
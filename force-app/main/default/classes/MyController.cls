public with sharing class MyController {

    public MyController() {

    }


public Id selectedAccount {get;set;}
public List<Contact> contactsInformation{get;set;}

    public List<Account> getMyaccounts() {
       List<Account> a = [SELECT Id, Name, Accountnumber from Account ORDER BY LastModifiedDate DESC LIMIT 10];
       return a;
    }
public void accountClicked() {
contactsInformation = [SELECT FirstName, LastName From Contact
WHERE AccountID=:selectedAccount];
}

}
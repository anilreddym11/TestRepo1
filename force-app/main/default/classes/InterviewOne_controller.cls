public class InterviewOne_controller{
public list<Account> listAccounts{get;set;}
    public InterviewOne_controller(){
        listAccounts=new list<Account>();
        listAccounts = [select name,BillingState ,phone,Website from Account];    
    
    }
}
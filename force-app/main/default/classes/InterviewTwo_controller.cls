public class InterviewTwo_controller{
public list<Account> listAccounts{get;set;}
public string searchString {get;set;}
Public List<String> s1;
Public String s2;
public boolean showmsg{get;set;}
    public InterviewTwo_controller(){
        listAccounts=new list<Account>();
        showmsg=false;
    }
    public pagereference displayAccounts(){
    try{
    List<String> s1= new List<String>();
        String AccountQuery = 'select id, name,BillingState, BillingPostalCode, BillingStreet,BillingCountry,BillingCity,NumberOfEmployees from Account';
        if(searchString != '' && searchString != null){
            if(searchString.contains(','))
                s1=searchString.split(',');
        }
         if(searchString.contains(',')){
          if(s1[1]!=''){
        
            AccountQuery = AccountQuery + ' where Name  LIKE  \'%'  + s1[0] +'%\' AND BillingState LIKE \'%'  + s1[1] +'%\' ';  
             }
         }
         else
             AccountQuery = AccountQuery + ' where Name  LIKE  \'%'+ searchString+'%\'';
        
      listAccounts=database.query(AccountQuery);
      if(listAccounts.size()>0 && listAccounts!=null)
          showmsg=false;
      else{
        ApexPages.Message errMsg = new ApexPages.Message(ApexPages.Severity.Warning,'No Accounts Found');
        ApexPages.addMessage(errMsg);
        showmsg=true; 
      }
  }catch(Exception e){}    
    return null;
    }
}
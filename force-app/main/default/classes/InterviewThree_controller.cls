public with sharing class InterviewThree_controller{

public list<Account> listAccounts{get;set;}
public list<WrapperAccountclass> listSelectedAccounts{get;set;}
public string searchString {get;set;}
public boolean showmsg{get;set;}
public list<WrapperAccountclass> actualAccountList {get;set;}
public list<WrapperSelectedAccountclass> SelectedAccountList {get;set;}
    public InterviewThree_controller(ApexPages.StandardController controller) {
        listAccounts=new list<Account>();
        listAccounts = [select name,phone from Account];  
        createAccountList(listAccounts);
        showmsg=false;
    }
    public pageReference SaveDummy()
    {
       
        PageReference Ref= new Pagereference('https://na14.salesforce.com/home/home.jsp');
            return Ref;
    
    }
    public void createAccountList(list<account> listAccounts){
        if(listAccounts!=null && listAccounts.size()>0){
            actualAccountList = new List<WrapperAccountclass>();
            SelectedAccountList = new list<WrapperSelectedAccountclass>();
            for(integer i=0;i<listAccounts.size();i++){
                WrapperAccountclass wrapperclass=new WrapperAccountclass(listAccounts[i]);
                actualAccountList.add(wrapperclass) ;
            
            }
        }
    }
     public List<WrapperAccountclass> getVFdata(){        
             return actualAccountList;    
     }
    
    public class WrapperAccountclass{
        public boolean selected{set;get;}
        public Account accountId{set;get;}
        public WrapperAccountclass(Account obj){
            selected=false;
            accountId=obj;
        
        }
    }
    
    
    public class WrapperSelectedAccountclass{
        public Account accountId{set;get;}
        public WrapperSelectedAccountclass(WrapperAccountclass obj){
           // accountId=obj;
        
        }
    }
    
   public PageReference showselectedAccounts1(){
    system.debug('SSSSS');
        if(actualAccountList.size()>0 && actualAccountList!=null){
            listSelectedAccounts=new list<WrapperAccountclass>();
                 for(Integer i=0; i<actualAccountList.size(); i++){    
                     WrapperAccountclass tempObjClass=actualAccountList[i];
                     if(tempobjclass.selected == true ){ 
                        // WrapperSelectedAccountclass selectedaccounts=actualAccountList[i];
                         //selectedaccounts.accountId=tempobjclass.accountId;
                         listSelectedAccounts.add(tempObjClass);
                         system.debug('listSelectedAccountslistSelectedAccounts'+listSelectedAccounts);
                     }       
                 }
        }
        pagereference par=new pagereference('/apex/Interview_One');
        return par;
    }
    public PageReference getshAccounts() {
    system.debug('DDDDD');
   
     return null;
    }
}
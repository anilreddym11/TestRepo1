public with sharing class TestPage_COntroller1 {
public Account acc{get;set;}
public Contact con{get;set;}
public TestPage_Controller1(){
    acc=new Account();
    con=new COntact();
    
}
 public PageReference Test() {
 insert acc;
 con.AccountId=acc.id;
 insert con;
PageReference pageRef = new PageReference('/'+acc.id);
        return pageRef;
        }

}
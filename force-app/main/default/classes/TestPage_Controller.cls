public with sharing class TestPage_Controller {
public boolean a {get;private set;}
    public TestPage_Controller(ApexPages.StandardController controller) {

    }
    public pageReference createABC(){
    System.debug('....Creating ABC....');
    Account abc=new Account(name='abc88879');
    insert abc;
    ApexPages.StandardController con=new ApexPages.standardController(abc);
    return con.view();
    
    }

}
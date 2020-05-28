public with sharing class Testpage1_Controller {

    public Testpage1_Controller(ApexPages.StandardController controller) {

    }
    public pageReference createABC(){
        System.debug('....Creating ABC....');
        Account abc=new Account(name='ytyytyyty');
        insert abc;
        ApexPages.StandardCOntroller con=new ApexPages.StandardCOntroller(abc);
        return con.view();
    }

}
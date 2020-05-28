public class MyCustomController {

 Public Account acc{get;set;}
    
    public MyCustomController(){
    acc = new Account();
    }
   
    public PageReference Test() {
        System.debug('HHHHHHHHHHHHHHH' +acc.Name);
        insert acc;
       PageReference pageRef = new PageReference('/'+acc.id);
        return pageRef;
    }


}
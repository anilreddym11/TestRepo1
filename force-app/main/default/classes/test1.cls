public class test1{

    public account acc{get;set;}

    public test1() {
        acc=new account();
    }

 
    public test1(ApexPages.StandardController controller) {
        acc=new account();
    }
public PageReference save(){
insert acc;
return new pagereference('/'+acc.id);

}

   
}
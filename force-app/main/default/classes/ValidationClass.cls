public class ValidationClass {

    public PageReference init() {
        return null;
    }


  public Account Acc{get;set;}
    public Account getAcc() {
        return null;
    }
Public PageReference init(String Name, String Phone){

Account a = new Account();
a.Name=Name;
a.Phone=Phone;
insert a;
return null;
}
}
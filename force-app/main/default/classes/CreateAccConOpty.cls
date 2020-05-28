Public Class CreateAccConOpty{
Public Account CreateAcc(String Name){
Account a = new Account();
a.Name='Test';
insert a;
Opportunity opp=new Opportunity();
opp.Name='Test Oprtunity';
opp.Accountid=a.id;
insert opp;
Contact c= new Contact();
c.LastName='Anil';
c.Accountid=a.id;
insert c;
return a;

}
}
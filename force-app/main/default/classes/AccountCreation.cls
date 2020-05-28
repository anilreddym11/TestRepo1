Public Class AccountCreation{

Public Account CreateAccount2(String name, String Phone){

Account a = new Account();
a.Name = name;
a.phone = phone;
insert a;
return a;
}
}

/*public Account SampleMethod(){
	
return null;	
} */
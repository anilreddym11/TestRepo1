public with sharing class displaytwoObjectsData_Controller {

public List<MyWrapper> myWrappers {get; set;}
public List<Account> accList{get;set;}
public List<Contact> conList{get;set;}

    public displaytwoObjectsData_Controller (){
        myWrappers = new List<MyWrapper>();
             accList=[Select Id,Name, Industry from Account];
             conList=[Select Id,FirstName, LastName, Name from Contact];
             for(Integer i=0 ;i<20;i++)
                    myWrappers.add(new MyWrapper(accList[i] , conList[i])) ;
    }



public Class MyWrapper {
    public Account accRec {get; set;}
        public Contact conRec {get; set;}
        
        public MyWrapper(Account acc , Contact con)
        {
            accRec = acc ;
            conRec = con ;
        }
    }
}
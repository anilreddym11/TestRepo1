public class dataTableCon {
    List<Account> a=new List<Account>();
    public List<Account> getAccounts() {
         
                a = [select name, owner.name from account limit 10];

                return a;
                }
        }
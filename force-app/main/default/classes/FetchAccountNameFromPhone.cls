Public class FetchAccountNameFromPhone{
Public Set<String> FetchAccName(String p, string n){
    Set<String> s1= new Set<String>();
    List<Account> acc=[Select id, Name From Account where phone=:p ];
        for(Account a:acc)
        {
        String s =a.name;
        s1.add(s);
    }
        System.debug('xxxxxxxxx' +s1);
        return s1;    
    
}
}
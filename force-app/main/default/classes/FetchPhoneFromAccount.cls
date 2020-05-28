Public class FetchPhoneFromAccount{
public Account FetchPhone(id p)
{
Account a= [Select Phone from Account where id='0019000000AcKUBAA3'];
String x = a.Phone;
System.debug('xxxxxxxx' +x);
return a;
}
}
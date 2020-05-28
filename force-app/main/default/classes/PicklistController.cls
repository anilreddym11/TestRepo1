public with sharing class PicklistController {
Public string pickval{get;set;}
Public List<SelectOption> getItems()
{
List<SelectOption> listOptions=new List<SelectOption>();
listOptions.add(new selectOption('13','2013'));
listOptions.add(new selectOption('14','2014'));
listOptions.add(new selectOption('15','2015'));
listOptions.add(new selectOption('16','2016'));
return listOptions;
}
}
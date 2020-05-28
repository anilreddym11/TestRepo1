public with sharing class CustomSettingsListController {

    public List<SelectOption> getItems() {
        List<SelectOption> options = new List<SelectOption>();
  /*  System.debug('AAAAAAAAAA' +ISO_Country__c.getAll().values());
         for(ISO_Country__c iso : ISO_Country__c.getAll().values())
                options.add(new SelectOption('iso.ISO_Code__c',iso.ISO_Code__c));
           
            return options;  */
      
   options.add(new SelectOption('United States of America','US'));
     options.add(new SelectOption('India','IN'));
     options.add(new SelectOption('AUS   ','UK'));

    
    return options;    

    }
}
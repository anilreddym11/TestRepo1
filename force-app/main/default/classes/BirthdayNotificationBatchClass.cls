global class BirthdayNotificationBatchClass implements Database.Batchable<SObject>
{
    Public String Query='Select Id, Email__c From Member__c where processed__c=false LIMIT 5';    
    global  Database.QueryLocator Start(Database.BatchableContext BC)
    {
      return Database.getQueryLocator(query);
    }
    global void Execute(Database.BatchableContext BC,List<Member__c> listMem)
    {
     List<Member__c> listMem2=new List<Member__c>();
      List<Messaging.SingleEmailMessage> allMails = new List<Messaging.SingleEmailMessage>();
      for(Member__c memRe:listMem) 
      {
            Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
               List<String> toAddresses = new List<String>();
               toAddresses.add(memRe.Email__c);
               email.setReplyTo('anil.sfdc1987@gmail.com');
               email.setSenderDisplayName('Anil Reddy M');
               email.setToAddresses(toAddresses);
               email.setSubject('Looking for Salesforce Position_7 Years Exp');
               string message='<html><body>Hello,<br></br>Hope you are doing good,<br></br>This is Anil Reddy M having 7 Years of experience on Salesforce.com on Configuration(Admin), Customization(Development) and integration.<br></br>I am looking for new SFDC Developer,Admin assignments as I am rolling out of my current project soon, please let me know if you have any SFDC positions available, I am attaching my updated resume for your reference, please find my details below.<br></br><b>I am ready to attend  face to face interview.</b><br></br>Consultant Name   :     Anil Reddy M</br>Present Location  :     Santa Calara, CA</br>Contact           :     408-883-4219</br>Email             :     anil.sfdc1987@gmail.com</br>Visa              :     H1B, May 2017</br>Experience        :     8 years</br>Availability      :     2 weeks </br> Certification     :     Dev 401</br>Employer details:Arush| Vamana Systems,Work : 309-807-3236, Email : arush@vamanasystems.com, Web : vamanasystems.com</body></html>'; 
               email.setHtmlBody(message);
               List<Messaging.Emailfileattachment> fileAttachments = new List<Messaging.Emailfileattachment>();
               Messaging.Emailfileattachment efa = new Messaging.Emailfileattachment();
               Document a=[Select Id,Name,Body from Document Where Id='01590000009cza4'];
               efa.setFileName(a.Name);
               efa.setBody(a.Body);
               fileAttachments.add(efa);
               allMails.add(email);
               email.setFileAttachments(fileAttachments);
               memRe.processed__c=true;
              // update memRe;
              listMem2.add(memRe);

       }
     // email.setFileAttachments(fileAttachments);
      Messaging.sendEmail(allMails); 
      if(listMem2!=null && listMem2.size()>0){
          update listMem2;
      }
    }
    global void finish(Database.BatchableContext BC)
    {
    }
}
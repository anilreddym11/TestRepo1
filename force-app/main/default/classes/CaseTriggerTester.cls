@IsTest(seeAlldata=true)
public class CaseTriggerTester{
     static testMethod void testCaseTrigger(){
         Product2 objProd=new Product2(Name='test product',ProductCode='testprodcode');
         insert objProd;
         Product_Service__c objPS=new Product_Service__c(Product_Code__c='testprodcode',Product_Manager__c=UserInfo.getUserId(),Task_Subject__c='test subject');
         insert objPS;
         Account recAcc=new Account(Name='TestAccount');
         insert recAcc;
         Asset objAsset=new Asset(Name='TestAsset',Product2Id=objProd.Id,AccountId=recAcc.Id);
         insert objAsset;
         Case objCase=new Case(Status='New',Origin='Web',AssetId=objAsset.Id);
         insert objCase;
         try{
             Product2 objProd1=new Product2(Name='test product',ProductCode='testprodcode1');
             insert objProd1;
             Account recAcc1=new Account(Name='TestAccount1');
             insert recAcc1;
             Asset objAsset1=new Asset(Name='TestAsset1',Product2Id=objProd1.Id,AccountId=recAcc1.Id);
             insert objAsset1;
             Case objCase1=new Case(Status='New',Origin='Web',AssetId=objAsset1.Id);
             insert objCase1;
         }
         catch(Exception e){}
         
     }
}
trigger UpdateActivenOnOppty on Top_X_designation__c (after insert) {
List<Opportunity> opps=new List<Opportunity>();


for(Top_X_designation__c td:Trigger.New){
if(td.Status__c=='Active'){

Opportunity opp= new Opportunity(id=td.Opportunity__c);
opp.Active__c = True;

opps.add(opp);
        
        }
    }

update opps;
}
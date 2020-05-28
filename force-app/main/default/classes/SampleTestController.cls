public class SampleTestController {
    public PageReference Test() {
        return null;
    }



 private Account acc;
 public SampleTestController(){
 
 acc = [Select Id, Name,Phone from Account where BillingCity = 'Burlington'];
    
 }   
    public Account getAccount() {
        return acc;
    }

}
global class SchedulableCla implements Schedulable{
global void execute(SchedulableContext SC) {
AccountCreation fty=new AccountCreation();
fty.CreateAccount2('OU','9052');
}
}
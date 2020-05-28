global class CreateAccountSchedule implements Schedulable{
global void execute(SchedulableContext SC){
AccountCreation ac = new AccountCreation();
ac.CreateAccount2('Osmania University', '9052');
}

}
global class BirthdayNotificationScheduleClass implements Schedulable{
   global void execute(SchedulableContext SC) 
   {
     
      BirthdayNotificationBatchClass BirthNotify=new BirthdayNotificationBatchClass();
      database.executebatch(BirthNotify,5);
      
   }
}
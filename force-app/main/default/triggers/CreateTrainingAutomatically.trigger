trigger CreateTrainingAutomatically on Contact (After Insert) {
   
    if(trigger.isAfter)
    {          
        if(trigger.isInsert)
        {
            ContactMasterHandler2 ConIns = New ContactMasterHandler2();
            ConIns.createTrainingsByContact(trigger.New);

}
}
}
trigger TaskTrigger on Account (after insert) {
    for (Account a : Trigger.New){
        Task aTask = new Task();
        aTask.OwnerId = a.OwnerId;
        atask.Subject = 'New Account Subj';
        aTask.Priority = 'Normal';
        aTask.whatId =  a.id;
        insert aTask;
    }
}
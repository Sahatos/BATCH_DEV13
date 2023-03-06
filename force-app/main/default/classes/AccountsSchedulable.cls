public class AccountsSchedulable implements Schedulable{
    public void execute(SchedulableContext sc){
        AccountsBatch ac = new AccountsBatch();
        ID batchId = Database.executeBatch(ac, 21);
        
    }
}
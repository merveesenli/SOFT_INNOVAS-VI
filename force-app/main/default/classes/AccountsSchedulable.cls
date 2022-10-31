public class AccountsSchedulable implements Schedulable {
    public void execute(SchedulableContext sc){
        Database.executeBatch(new accountsBatch());

    }
}

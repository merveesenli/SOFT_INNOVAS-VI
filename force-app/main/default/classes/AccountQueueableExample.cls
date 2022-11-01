public with sharing class AccountQueueableExample implements Queueable {
    public list<account> accList;
    //queueableexample
    
    public AccountQueueableExample(list<account> accList) {
        this.accList = accList;
    }
    public void execute(QueueableContext context){
        List<account> updateAcc = new List<account>();
        for (account acc : accList) {
            account a = new account();
            a.id = acc.id;
            acc.name = acc.name + '---SI';
            updateAcc.add(a);
            System.debug(acc.name);
        }
        update accList;
    }
}
 
@isTest
public class AccountQueueableExampleTest {
    @TestSetup
    static void makeData(){
        List<account> accs = new List<account>();
        for (Integer i = 0; i < 200; i++) {
            account a = new account(name = 'Test Account ' + i);
            accs.add(a);
        }
        insert accs;  
    } 
    @isTest 
    private static void testQueueble() {
        List<Account> listAcc = [select id, name from account];
        AccountQueueableExample aq = new AccountQueueableExample(listAcc);
        test.startTest();
        system.enqueuejob(aq);
        test.stopTest();

        List<Account> resultAcc = [select id, name from account where name like '%SI%'];
        system.assertequals(200, resultAcc.size()); 
    }

    
}

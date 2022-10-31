public class AccountsBatchTest {
    @isTest
    private static void testBatch1 () {
        List<account> listAcc = new list<account>();
        for (Integer i = 0; i < 900; i++) {
            account a = new account();
            a.Name = 'test acc batch'+i;
            listAcc.add(a);
        }
        insert listAcc;

        test.startTest();
        Database.executeBatch(new AccountsBatch(), 950);
        test.stopTest();

        list<account> listAccount = [select id, description from account];
        system.assert(listAccount[0].description.contains('Batch'));
    }
}

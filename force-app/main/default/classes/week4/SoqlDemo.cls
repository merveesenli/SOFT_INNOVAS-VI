public class SoqlDemo {
    public static void accountSOQL_1() {
        List<Account> listAcc = [Select ID, Name, phone, active__c from Account WHERE Name like '%A%'];
        System.debug('account list = ' + listAcc);
        System.debug('ListAcc of records: ' + listAcc.size());

        Account acc = [Select Id, Name, phone, active__c from Account ORDER BY CreatedDate desc LIMIT 1];
        System.debug('latest account created is ' + acc);
    }
    public static void accountSOQL_2() {
        Account acc = [Select Id, Name, phone, active__c, AccountNumber from Account ORDER BY CreatedDate desc LIMIT 1];
        System.debug('latest account created is ' + acc);
        string accName = acc.Name;
        string accPhone = acc.phone;

        System.debug('acc name is ' + accName + ' phone is ' + accPhone + ', acc number = ' + acc.AccountNumber);
    }
    public static void accountSOQL_3() {
        List<Account> listAcc = [Select Id, Name, Phone, AccountNumber from Account ORDER BY CreatedDate desc];
        System.debug('all accounts ' + listAcc);
        for (Account eachAccount : listAcc) {
            string accName = eachAccount.Name;
            string accPhone = eachAccount.phone;
            System.debug('acc name is ' + accName + ' phone is ' + accPhone + ', acc number = ' + eachAccount.AccountNumber);
            System.debug('-------------');
        }       
    }
    public static void accountSOQL_Filter() {
        string accNameFilter = 'Salesforce Inc';
        List<account> listAcc = [select id, name from account where name = :accNameFilter];
        System.debug(listAcc);
    }
    public static void accountSOQL_Filter(string accName) {
        List<account> listAcc = [select id, name from account where name = :accName];
        System.debug(listAcc);
    } 
      
}

public  class DmlDemo {
    public static void dmlInsertDemo_StndObj1() {
        Account acc = new account();
        acc.Name = 'SoftInnovas';
        acc.phone = '986578544';
        insert acc;
        System.debug(acc);
    }
    public static void dmlInsertDemo_cstmdObj1() {
        salesforce_project__c sp = new salesforce_project__c();
        sp.project_Name__c = 'Teach DML to Batc9 the great';
        sp.description__c = 'All 50% are great learners';
        insert sp;
    }
    public static void dmlUpdateDemo_1() {
        Account acc = new Account();
        acc.Name = 'anything';
        System.debug('before insert acc ===> ' + acc);
        insert acc;
        System.debug('after insert acc ===> ' + acc);

        acc.name = 'Salesforce Inc.';
        update acc;
        System.debug('after update acc ===> ' + acc);
    }
    public static void dmlUpdateDemo_3() {
        account acc = [select id, name from account where name = 'SoftInnovas' limit 1];
        acc.Name = 'SoftInnovas Inc.';
        update acc;
        System.debug('acc = ' + acc);
    }
    public static void dmlUpdateDemo_4(){
        account acc = [select id, name from account order by createddate desc limit 1];
        contact cnt = new contact();
        cnt.Lastname = 'Biden';
        cnt.Accountid = acc.id;
        insert cnt;
    }
    public static void dmlUpdateDemo_4_CO(){
        salesforce_project__c sp = [select id, name from salesforce_project__c order by createddate desc limit 1];

        salesforce_ticket__c st = new salesforce_ticket__c();

        st.subject__c = 'Learn APEX';
        st.Priority__c = 'High';
        st.description__c = 'kinda simple';
        st.status__c = 'New';
        st.requested_by_date__c = date.newInstance(2022,8,1);
        st.salesforce_project__c = sp.id;
        insert st;
    }
    public static void dmlMultipleRecordInsert_right1(){
        list<account> listAccount = new list<Account>();

        account acc1 = new account();
        acc1.name = 'bulk acc 1';
        listAccount.add(acc1);

        account acc2 = new account();
        acc2.name = 'bulk acc 2';
        listAccount.add(acc2);

        account acc3 = new account();
        acc3.name = 'bulk acc 3';
        listAccount.add(acc3);

        insert listAccount;
    }
    public static void dmlMultipleRecordInsert_right2() {
        List<account> listAcc = new List<account>();

        for (integer i =0; i<155; i++) {
            account a = new account();
            a.name = 'SoftInnovas 30ct-v' + i;
            a.Active__c = 'Yes';
            listAcc.add(a);
        }
        insert listAcc;
    }
    public static void dmlMultipleRecordUpdate_right() {
        List<account> listAcc = [select id, name from account order by createddate desc limit 620];
        List<account> updateAcc = new List<account>();

        for (account eachAcc : listAcc) {
            eachAcc.name += ' via B.0';
            eachAcc.Accountnumber = '98945421254';
            updateAcc.add(eachAcc);
            
        }
        if (!updateAcc.isEmpty()) {
            update updateAcc;
        }  
    }
}

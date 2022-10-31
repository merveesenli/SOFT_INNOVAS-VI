@isTest
public class DmlDemoTest {
    @isTest
    private static void dmlTest1() {
        DmlDemo.dmlInsertDemo_StndObj1();
        list<account> listAcc = [select id, name from account];
        system.assertEquals(1, listAcc.size());
        system.assertEquals('SoftInnovas', listAcc[0].Name);
    }
    @isTest
    private static void dmlUpdateDemoTest2() {
        account acc = new account();
        acc.name = 'SoftInnovas';
        insert acc;

        DmlDemo.dmlUpdateDemo_3();

        list<account> checkAccount = [select id, name from account where name = 'SoftInnovas Inc.'];
        system.assertEquals(1, checkAccount.size());
    }
    @isTest 
    private static void dmlUpdateDemoTest3() {
        salesforce_project__c sp = new salesforce_project__c();
        sp.project_Name__c = 'Teach DML to Batch9 the great';
        sp.description__c = 'All %50 are great learners';
        insert sp;
    
        DmlDemo.dmlUpdateDemo_4_CO();

        list<salesforce_ticket__c> listST = [select id, subject__c, salesforce_project__c from salesforce_ticket__c where subject__c = 'Learn APEX'];
        system.assertEquals(sp.id, listST[0].salesforce_project__c);
    }
}


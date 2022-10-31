@isTest
public class SoqlDemoTest {
    @TestSetup
    static void makeData(){
        Account acc1 = new Account();
        acc1.name = 'SI Test';
        acc1.Industry = 'Energy';

        Account acc2 = new Account();
        acc2.name = 'UI Test';
        acc2.Industry = 'Energy';

        Account acc3 = new Account();
        acc3.name = 'PI Test';
        acc3.Industry = 'Banking';

        List<account> accList = new List<account>{acc1, acc2, acc3};
        insert accList;

        List<contact> listContact = new List<contact>();
        for (Integer i = 0; i < 300; i++) {
            contact c = new contact();
            c.lastname = 'Soql test' + i;
            if (i<100) {
                c.Accountid = acc1.id;
            } else if(i<200) {
                c.accountid = acc2.id;
            } else if (i<300){
                c.accountid = acc3.id;
            }
            listContact.add(c);
        }
        insert listContact;   
    }
    @isTest 
    private static void testSoqlParentToChild() {
        test.startTest();
        SoqlDemo2.childToParent_SOQL1();
        test.stopTest(); 
    }
    @isTest 
    private static void testParentToChild2() {
        list<account> listAcc = [select id, Type, name from account];
        for (account acc : listAcc) {
            acc.Type = 'Customer - Direct';
        }
        update listAcc;
        List<opportunity> listOpp = new List<opportunity>();
        for (Integer i = 0; i < 300; i++) {
            opportunity o = new opportunity();
            o.name = 'test o ' + i;
            o.stageName = 'Closed Won';
            o.closedate = date.today();
            if (i<100) {
                o.Accountid = listAcc[0].id;
            } else if(i<200) {
                o.Accountid = listAcc[1].id;
            } else if (i<300) {
                o.Accountid = listAcc[2].id;
            }
            listOpp.add(o);
        }
        insert listOpp;
        test.startTest();
        soqlDemo2.parentToChild_SOQL1();
        test.stopTest();
    }   
}

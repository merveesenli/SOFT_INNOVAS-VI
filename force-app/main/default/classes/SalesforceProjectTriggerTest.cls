@isTest
public class SalesforceProjectTriggerTest {
    @isTest 
    private static void testSFTrigger() {
        salesforce_project__c sp1 = new salesforce_project__c();
        sp1.project_name__c = 'trigger test';
        insert sp1; 

        sp1.project_name__c = 'update trigger test';
        update sp1;
    }
    @isTest 
    private static void testFutureMethod() {
        salesforce_project__c sp1 = new salesforce_project__c();
        sp1.project_name__c = 'Teach future test 1';
        sp1.description__c = 'future test 1';
        sp1.status__c = 'New';

        salesforce_project__c sp2 = new salesforce_project__c();
        sp2.project_name__c = 'Teach future test 2';
        sp2.description__c = 'future test 2';
        sp2.status__c = 'New';

        List<salesforce_project__c> listSP = new List<salesforce_project__c>{sp1, sp2};
        insert listSP;

        Set<id> setId = new Set<id>{sp1.id, sp2.id};

        test.startTest();
        SalesforceProjectTriggerHandler.updateProjectDescription(setId);
        test.stopTest();

        list<salesforce_project__c> resultSP = [select id, description__c from salesforce_project__c];
        system.assert(resultSP[0].description__c.contains('future'));

    }

}


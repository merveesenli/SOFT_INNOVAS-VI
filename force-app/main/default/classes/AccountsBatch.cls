public with sharing class AccountsBatch implements Database.Batchable<sObject>, Database.stateful{
    integer numberOfRecords = 0;
    integer count = 0;
    
    public Database.QueryLocator start(database.BatchableContext bc){

        System.debug('Batch started');
        Database.QueryLocator q1 = Database.getQueryLocator([select id, description from account]);
        return q1;

    }

    public void execute(Database.BatchableContext bc, list<account> scope){
        System.debug('Execute method running');
        for (account acc : scope) {
            acc.description += '...Update via Batch.';
        }
        numberOfRecords += scope.size();
        count++;
        System.debug('count is ' + count);
        System.debug('Number of records ' + numberOfRecords);
        update scope;
    }

    public void finish(Database.BatchableContext bc){
        system.debug('finish method executed. Batch done. Simple');
    }
}

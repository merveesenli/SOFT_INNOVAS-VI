trigger CaseTrigger on case (before insert, after insert, before update, after update, before delete, after delete) {
    if (trigger.isInsert) {
        System.debug('before insert case'); 
    }
    if (trigger.isUpdate) {
        CaseTriggerHandler.countTriggerExecution++;
        System.debug('case trigger execution count ==> ' + CaseTriggerHandler.countTriggerExecution);
        CaseTriggerHandler.countTriggerRecords += trigger.size;
        System.debug('case trigger record count ==> ' + CaseTriggerHandler.countTriggerRecords);
    }  
}





/*if (trigger.isBefore) {
        if (trigger.isInsert) {
            System.debug('Before insert Case');
        }
        if (trigger.isUpdate) {
            System.debug('Before Update Case');
        }
        if (trigger.isDelete) {
            System.debug('Before delete Case');
        }
    }
    if (trigger.isAfter) {
        if (trigger.isInsert) {
            System.debug('After insert Case');
        }
        if (trigger.isUpdate) {
            System.debug('After Update Case');
        }
        if (trigger.isDelete) {
            System.debug('After delete Case');
        }
    }*/    
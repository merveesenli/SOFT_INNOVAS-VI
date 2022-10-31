trigger SalesforceTicketTrigger on salesforce_ticket__c (before insert, before update, after insert, after update) {
if (trigger.isBefore) {
    for (salesforce_ticket__c eachST : trigger.new) {
        boolean updateDesc = false;
        if (trigger.isInsert) {
            if (eachST.priority__c == 'High') {
                updateDesc = true;
            }    
        }
        if (trigger.isUpdate) {
            if (eachST.priority__c == 'High' && trigger.oldMap.get(eachST.id).priority__c != eachST.priority__c) {
                updateDesc = true;
            }
        }
        if (updateDesc) {
            eachST.Description__c = 'The ticket priority is HİGH. Work on it ASAP';
        }    
    } 
}
}
public class ContactTriggerHandler {
   public static void contactUpdateValidation1(list<contact> contTriggerNew, list<contact>  contTriggerOld, map<id, contact> contTriggerNewMap, map<id, contact> contTriggerOldMap) {
    for (contact eachContact : contTriggerNew) {
        contact oldContact = contTriggerOldMap.get(eachContact.id);
        if (eachContact.LeadSource == 'Partner Referral') {
            eachContact.addError('Cannot update \'Partner Referral\' contacts.');
        }
    }
   }
   
   public static void contactUpdateValidation2(list<contact> contTriggerNew, list<contact> contTriggerOld, map<id, contact> contTriggerNewMap, map<id, contact> contTriggerOldMap){
    for (contact eachContact : contTriggerNew) {
        if (eachContact.LeadSource != contTriggerOldMap.get(eachContact.id).LeadSource) {
            eachContact.LeadSource.addError('CANNOT UPDATE LEADSOURCE!!! PLEASE USER.');
        }
    }
   }

   public static void updateAccNumberOfContacts(list<contact> contTriggerNew, list<contact> contTriggerOld) {
        Set<id> accountIds = new Set<id>();
        if (trigger.isInsert || trigger.isUpdate || trigger.isUndelete) {
            for (contact eachContact : contTriggerNew) {
                accountIds.add(eachContact.accountId);
            }
        }
        if (trigger.isUpdate || trigger.isDelete) {
            for (contact eachContact : contTriggerOld) {
                accountIds.add(eachContact.accountid);
            }
        }
        if (!accountIds.isEmpty()) {
            List<account> listAcc = [select id, number_of_contacts__c, (select id from contacts) from account where id in :accountIds];
            List<account> updateAcc = new List<account>();
            for (account eachAcc : listAcc) {
                eachAcc.number_of_contacts__c = eachAcc.contacts.size();
                updateAcc.add(eachAcc);
            }
            update updateAcc;
        }  
   }
}

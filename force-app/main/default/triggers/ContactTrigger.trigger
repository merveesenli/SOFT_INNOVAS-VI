trigger ContactTrigger on Contact (before insert, before update, after insert, after update, after delete, after undelete) {
    if (trigger.isBefore && trigger.isUpdate) {
        ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    if (trigger.isAfter) {
        ContactTriggerHandler.updateAccNumberOfContacts(Trigger.New, Trigger.Old);
    }
}
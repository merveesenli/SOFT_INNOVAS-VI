trigger AssetTrigger on Asset (before insert, before update) {
if (trigger.isBefore) {
    AssetTriggerHandler.updateDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
}
}
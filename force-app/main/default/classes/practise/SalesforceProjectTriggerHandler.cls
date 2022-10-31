public class SalesforceProjectTriggerHandler {
   public static void insertSFProject(){
    List<salesforce_project__c> listSp = new List<salesforce_project__c>();
    for (Integer i = 1; i < 4; i++) {
        salesforce_project__c sp = new salesforce_project__c();
        sp.project_Name__c = 'Project Trigger ' + i;
        sp.status__c = 'Completed';
        listSp.add(sp);  
    }
    insert listSp;
   }
   public static void updateSFProject(){
    List<salesforce_project__c> listUpdateSp = [select id, name, project_Name__c from salesforce_project__c where project_Name__c like 'Project%'];
    list<salesforce_project__c> spU = new List<salesforce_project__c>();
    for (salesforce_project__c spUpdate : listUpdateSp) {
        spUpdate.project_Name__c = 'Project Update';
        spU.add(spUpdate);
    } 
    update spU;
   } 
}

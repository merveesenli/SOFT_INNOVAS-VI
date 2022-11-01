trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    
    TriggerSwitch__c accountSwitch = TriggerSwitch__c.getInstance('account');
    if (accountSwitch.switch__c == false) {
        return;
    }
    system.debug('====trigger start======');
    if (trigger.isBefore ) {
        AccountTriggerHandler.updateDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    if (trigger.isAfter && trigger.isInsert) {
        AccountQueueableExample aq = new AccountQueueableExample(Trigger.new);
        system.enqueuejob(aq);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        AccountTriggerHandler.updateVIPforAllContacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    
    system.debug('====trigger end====');
}







/*trigger AccountTrigger on Account (after insert){
    if (trigger.isInsert && trigger.isAfter) {
        AccountTriggerHandler.createAccWithContact(Trigger.New);
    }
}*/



    
    /*if (trigger.isAfter && trigger.isInsert) {
        list<contact> listContact = new list<contact>();
        for (account eachAcc : trigger.new) {
            for (Integer i = 1; i < 3; i++) {
                contact c = new contact();
                c.accountid = eachAcc.Id;
                c.lastname = eachAcc.name;
                listContact.add(c);
            }
        }
        insert listContact;
    }
}




    /*if (trigger.isBefore) {
    System.debug('Before insert/update trigger on Account object');
    for (Account eachAcc : Trigger.new) {
        boolean updateDesc = false;
        if (trigger.isInsert && eachAcc.active__c == 'Yes') {
            updateDesc = true; 
        }
        if (trigger.isUpdate) {
            if (eachAcc.active__c == 'Yes' &&
                trigger.oldMap.get(eachAcc.id).active__c != trigger.newMap.get(eachAcc.id).active__c) {
                updateDesc = true;
            }
        }
        if (updateDesc) {
            eachAcc.Description = 'Account is now active. Enjoy!';
        }
    }
}



}
    /*if (trigger.isAfter && trigger.isUpdate) {
    integer countWSChanged = 0;
    Map<id, Account> newMapAcc = trigger.newMap;
    Map<id, Account> oldMapAcc = trigger.oldMap;
    Set<id> accIds = trigger.newMap.keySet();

    

    for (id eachId : accIds) {
        account oldAcc = oldMapAcc.get(eachId);
        string oldWebSite = oldAcc.website;

        account newAcc = newMapAcc.get(eachId);
        string newWebSite = newAcc.website;

        if (oldWebSite != newWebSite) {
            countWSChanged ++;
            System.debug('For account ' + newAcc.name + ', website is change to ' + newWebSite);
        }
    } 
    System.debug('total account where website is changed ==> ' + countWSChanged);

}




}
    /*Map<id, account> trgNewMap = trigger.newMap;
Map<id, account> trgOldMap = trigger.oldMap;
if (trigger.isUpdate && trigger.isBefore) {
    Set<id> eachIds = trgNewMap.keySet();
    for (id eachId : eachIds) {
        System.debug('each id ==> ' + eachId);
        account newAccount = trgNewMap.get(eachId);
        System.debug('new account name ==> ' + newAccount.name);
        account oldAccount = trgOldMap.get(eachId);
        System.debug('old account name ==> ' + oldAccount.name);
    }
}
}






/*if (trigger.isInsert && trigger.isBefore) {
    System.debug('before insert trigger.oldMap ==> ' +trgOldMap);
    System.debug('before insert trigger.NewMap ==> ' +trgNewMap);
}
if (trigger.isInsert && trigger.isAfter) {
    System.debug('after insert trigger.oldMap ==> ' +trgOldMap);
    System.debug('after insert trigger.NewMap ==> ' +trgNewMap);
}
if (trigger.isUpdate && trigger.isBefore) {
    System.debug('before UPDATE trigger.oldMap ==> ' +trgOldMap);
    System.debug('before UPDATE trigger.NewMap ==> ' +trgNewMap);
}
if (trigger.isUpdate && trigger.isAfter) {
    System.debug('after UPDATE trigger.oldMap ==> ' +trgOldMap);
    System.debug('after UPDAATE trigger.NewMap ==> ' +trgNewMap);
}





    /*
    if (trigger.isAfter && trigger.isUpdate) {
        List<account> oldAccounts = trigger.old;
        Set<id> accIdSet = new Set<id>();
        for (account eachAccOld : oldAccounts) {
            System.debug('old id ==> ' + eachAccOld.id + ' old name ==> ' + eachAccOld.name);
        }
        List<account> newAccounts = trigger.new;
        for (account eachAccNew : newAccounts) {
            System.debug('new id ==> ' + eachAccNew.id + ' new name ==> ' + eachAccNew.name);
        }
        
    }





}










/*if (trigger.isInsert && trigger.isBefore) {
        System.debug('before insert trigger.old ==> ' +trigger.old);
    }
    if (trigger.isInsert && trigger.isAfter) {
        System.debug('after insert trigger.old ==> ' +trigger.old);
    }
    if (trigger.isUpdate && trigger.isBefore) {
        System.debug('before insert trigger.old ==> ' +trigger.old);
    }
    if (trigger.isUpdate && trigger.isAfter) {
        System.debug('after insert trigger.old ==> ' +trigger.old);
    }

    

}









    
    }
    
    if (trigger.isAfter && trigger.isInsert) {
        System.debug('After trigger trigger.new ==> ' + newAccounts);
        for (account acc : newAccounts) {
            System.debug('acc id ==> ' + acc.id + ' acc name ==> ' + acc.name);
        }  
    }
    if (trigger.isBefore && trigger.isUpdate) {
        System.debug('Before UPDATE trigger trigger.new ==> ' + newAccounts);
        for (account acc : newAccounts) {
            System.debug('acc id ==> ' + acc.id + ' acc name ==> ' + acc.name);
        }  
    }
    
    if (trigger.isAfter && trigger.isUpdate) {
        System.debug('After UPDATE trigger trigger.new ==> ' + newAccounts);
        for (account acc : newAccounts) {
            System.debug('acc id ==> ' + acc.id + ' acc name ==> ' + acc.name);
        }  
    }
    
}    
    
    
    
     System.debug('=======trigger start======');
    if(Trigger.isBefore){
        System.debug('We are in BEFORE trigger.');
        if (Trigger.isInsert) {
            System.debug('Before insert account trigger called.');   
        }
        if (Trigger.isUpdate) {
            System.debug('Before update account trigger called.');   
        }
    }    
    if(Trigger.isAfter){
        System.debug('We are in AFTER trigger.');
        if (Trigger.isInsert) {
            System.debug('After insert account trigger called.');
        }
        if (Trigger.isUpdate) {
            System.debug('After update account trigger called.');
        }
    }    
System.debug('=======trigger end======='); */

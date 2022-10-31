public class DMLPractice {
    public static void insertNewAccount() {
        account acc = new account();
        acc.name = 'DML Practice';
        acc.rating = 'Hot';
        acc.type = 'Prospect';
        insert acc;
    }
    public static void createOppsForNewAcc() {
        account acc1 = [select id, name, rating, type from account ORDER BY CreatedDate desc limit 1];
        List<opportunity> oppList = new List<opportunity>();
    
        for (Integer i = 1; i < 6; i++) {
            opportunity opp = new opportunity();
            opp.name = 'DML Opp' + i;
            opp.amount = 500000;
            opp.closedate = date.newInstance(2022, 11, 5);
            opp.stagename = 'Prospecting';
            opp.accountid = acc1.id;
            oppList.add(opp);
        }
            insert oppList;      
    }
    public static void updateOpps() {
        list<opportunity> opp1 = [select id, name from Opportunity ORDER BY CreatedDate DESC limit 5];
        List<opportunity> updeteOpp = new List<opportunity>();
        
        integer i = 1;
        for (opportunity eachOpp : opp1) {
             eachOpp.name = 'DML Opp Update ' + i;
             i++;
             updeteOpp.add(eachOpp); 
            }
        update updeteOpp;    
    }
    public static void deleteOpps() {
        list<opportunity> opp2 = [select id, name from Opportunity ORDER BY CreatedDate DESC limit 5];
        delete opp2;
    }
}

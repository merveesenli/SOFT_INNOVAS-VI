public class SoqlDemo2 {
    public static void childToParent_SOQL1() {
        list<contact> listCnt = [select name, phone, account.name, account.industry from contact where account.industry = 'Energy'];

        for (contact eachContact : listCnt) {
            string accName = eachContact.Account.Name;
            string accIndustry = eachContact.Account.Industry;
            System.debug('contact name is ' + eachContact.Name + ', its acc is ' + accName);
        }
    }
    public static void parentToChild_SOQL1() {
        list<account> accountWithOppList = [select name, AnnualRevenue, type, (select name, amount, stageName from opportunities where stageName = 'Closed Won') from account where type = 'Customer - Direct'];

        for (account eachAcc : accountWithOppList) {
            System.debug('Account name ' + eachAcc.Name + ' and its annual revenue is --> ' + eachAcc.AnnualRevenue);
            System.debug('-----------');
            for (opportunity eachOpp : eachAcc.Opportunities) {
                System.debug('Opp name is ' + eachOpp.Name + ' and amount is --> ' + eachOpp.amount);   
            }
            System.debug('===========');   
        }
    }
    public static void parentToChild_SOQL2() {
        list<salesforce_project__c> listSP = [select id, name, project_name__c, status__c, (select name, subject__c, priority__c from salesforce_tickets__r) from salesforce_project__c];
        
        integer totalHP = 0;
        for (salesforce_project__c eachSP : listSP) {
            System.debug('project name is ' + eachSP.project_name__c + ' and autonumber is ' + eachSP.name);
            list<salesforce_ticket__c> listST = eachSP.salesforce_tickets__r;
            System.debug('total tickets in ' + eachSP.name + ' are ' + listST.size());
            integer highPriorityST = 0;

            for (salesforce_ticket__c eachST : listST) {
                if (eachST.Priority__c == 'High') {
                    highPriorityST++;
                    totalHP++;  
                }    
            }
            System.debug('projects # of high priority tickets ===> ' + highPriorityST);    
        }
        System.debug('total # of high priority tickets ==> ' + totalHP);
    }
  
}

public class AccountUpdateHelper {
    @invocableMethod
    public static void updateAccountWebsite(list<id> accIds) {
        List<account> updateAcc = new List<account>();
        for (account eachAccount : [select id, website from account where id in :accIds]) {
            eachAccount.website = 'www.softinnovas.com';
            updateAcc.add(eachAccount); 
        }
        update updateAcc;
    }
}

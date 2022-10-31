public class SoqlAssignment {
    public static void sixCharacter() {
        List<Account> listAcc = [select id, name, AnnualRevenue from Account WHERE Name like 'United%'];
        System.debug(listAcc);
        
    }
}

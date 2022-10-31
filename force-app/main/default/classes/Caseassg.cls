public class Caseassg {
    public static void caseInsert() {
        case c = new case();
        c.subject = 'Testcase';
        c.origin = 'Phone';
        insert c;
    }
    public static void caseUpdate() {
        case c = [select id, subject from case where subject = 'Testcase'];
        c.subject = 'Test case 1';
        update c;
    }
    public static void caseDelete() {
        case c = [select id, subject from case where subject like '%case 1%'];
        delete c;
    }  
}

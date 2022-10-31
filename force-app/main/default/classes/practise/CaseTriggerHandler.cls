public class CaseTriggerHandler {
    public static void insertCase() {
        case c = new case();
        c.subject = 'Case Tigger Test';
        c.status = 'New';
        c.origin = 'Web';
        insert c;
    }
    public static void updateCase() {
        case c1 = [select id, subject from case ORDER BY CreatedDate desc limit 1];
        c1.subject = 'Case Tigger Test Update';
        update c1;
    }
    public static void deleteCase() {
        case c2 = [select id, subject from case ORDER BY CreatedDate desc limit 1];
        delete c2;
    }
}

@isTest
public class CaseAssgTest {
    @isTest 
    private static void caseInsertTest() {
        Caseassg.caseInsert();
        List<case> listCase = [select id, subject from case];
        system.assertEquals(1, listCase.size());
        system.assertEquals('Testcase', listCase[0].subject);
    }
    @isTest
    private static void caseUpdeteTest() {
        case c = new case();
        c.subject = 'Testcase';
        insert c;

        Caseassg.caseUpdate();
        list<case> listCase = [select id, subject from case where subject = 'Test case 1'];
        system.assertEquals(1, listCase.size());
    }
    @isTest 
    private static void caseDeleteTest() {
        case c = new case();
        c.subject = 'Test case 1';
        insert c;

        Caseassg.caseDelete();
        list<case> listCase = [select id, subject from case where subject like '%case 1%'];
        case deletedCase = [select id, IsDeleted from case where id = :c.id all rows];
        system.assertEquals(deletedCase.IsDeleted, true);
    }
}

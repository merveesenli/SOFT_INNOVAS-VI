@isTest 
public class Contact_assgTest {
    @TestSetup
    static void makeData(){
        List<contact> listContact = new List<contact>();
        for (Integer i = 1; i < 6; i++) {
            contact con = new contact();
            con.lastname = 'Doe ' + i;
            con.department = 'Soft Innovas';
            listContact.add(con); 
        }
        insert listContact;
    }
    @isTest 
    private static void testInsertContact() {
        Contact_assg.contactInsert();
    }
    @isTest 
    private static void testUpdateContact() {
        list<contact> listContact = [select id, lastname, department from contact where department = 'Soft Innovas'];
        Contact_assg.contactUpdate();   
    }
    @isTest
    private static void testDeleteContact() {
        list<contact> listContact = [select id, lastname, department from contact where department = 'SI Salesforce'];
        Contact_assg.contactDelete();
        system.assertequals(0, listContact.size());
    } 
}

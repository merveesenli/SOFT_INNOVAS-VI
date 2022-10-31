public class Contact_assg {
    public static void contactInsert() {
        List<contact> listContact = new List<contact>();

        for (Integer i = 1; i < 6; i++) {
            contact con = new contact();
            con.lastname = 'Doe ' + i;
            con.department = 'Soft Innovas';
            listContact.add(con); 
        }
        insert listContact;
    }
    public static void contactUpdate() {
        list<contact> listContact = [select id, department from contact where Department = 'Soft Innovas'];
        for (contact eachContact : listContact) {
            eachContact.department = 'SI Salesforce';
        }
        update listContact;
    }
    public static void contactDelete() {
        list<contact> listContact = [select id, department from contact where Department = 'SI Salesforce'];
        delete listContact;
    }
  
}

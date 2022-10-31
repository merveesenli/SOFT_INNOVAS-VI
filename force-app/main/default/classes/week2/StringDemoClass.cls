public class StringDemoClass {
    public void stringMethod1(){
        String sessionDescription = 'Learning string method in apex language';
        system.debug(sessionDescription);

        integer lengthOfStr = sessionDescription.length();
        system.debug('length of str is ' + lengthOfStr);

        string sessionDescriptionInCaps = sessionDescription.toUpperCase();
        system.debug('session description in caps = ' + sessionDescriptionInCaps); 

        boolean containApex = sessionDescription.contains('apex');
        system.debug('has apex? ' + containApex);

        boolean containApex2 = sessionDescription.contains('APEX');
        system.debug('has APEX? ' + containApex2);

        boolean containApex3 = sessionDescription.containsIgnoreCase('APEX');
        system.debug('has APEX? ' + containApex3);

        string s1 = 'salesforce';
        boolean containSalesforce = sessionDescription.containsIgnoreCase(s1);
        system.debug('has salesforce? ' + containSalesforce);
    }
}
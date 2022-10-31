Map<string, country_code__c> cc = country_code__c.getAll();
System.debug('country code map ===> ' + cc);

for (string eachCountry : cc.keySet()) {
    country_code__c eachCC = cc.get(eachCountry);
    string isoCode = eachCC.iso_code__c;
    System.debug(eachCountry + ' ISO Code is ' + isoCode);
}

country_code__c can = country_code__c.getInstance('Canada');
System.debug('Canada iso code is ' + can.iso_code__c);
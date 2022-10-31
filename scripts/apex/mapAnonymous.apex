map<string, string> mapCountryCurrency = new map<string, string>();

mapCountryCurrency.put('USA', 'Dollar');
mapCountryCurrency.put('Japan', 'Yen');
mapCountryCurrency.put('France', 'Euro');
mapCountryCurrency.put('India', 'Rupees');
mapCountryCurrency.put('India', 'Rupee');
mapCountryCurrency.put('Turkey', 'Lira');
system.debug(mapCountryCurrency);

string IndiaCurrency = mapCountryCurrency.get('India');
string TurkeyCurency = mapCountryCurrency.get('Turkey');

system.debug('India currency => ' + IndiaCurrency);
system.debug('Turkey currency => ' + TurkeyCurency);

Set<string> allCountries = mapCountryCurrency.keySet();
System.debug(allCountries);
List<string> allCurrencies = mapCountryCurrency.values();
System.debug(allCurrencies);

Set<string> countriesSet = mapCountryCurrency.keySet();
for(string eachKey : countriesSet){
    string printString = 'Country is ' + eachKey;
    string eachCurrency = mapCountryCurrency.get(eachKey);

    printString += ', its currency is ' + eachCurrency;
    System.debug(printString);
    
}

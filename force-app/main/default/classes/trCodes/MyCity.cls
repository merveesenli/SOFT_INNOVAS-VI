public class MyCity {
    public void cityInformation() {
        string country = 'İsveç';
        string city = 'Stockholm';
        string myFavorite = 'Gezmek istediğim Ülke -> ' + country + ' ve şehir -> ' + city;
        System.debug(myFavorite);
        
        date dateOfTurkey = date.newInstance(1923, 10, 29);
        System.debug('Türkiye\'nin kuruluş tarihi: ' + dateOfTurkey);
        time sunrise = time.newInstance(6, 52, 0, 0);
        System.debug('Gündoğumu zamanı: ' + sunrise);
        date today = date.today();
        date before36Months = today.addMonths(-36);
        System.debug('Bugünün tarihi: ' + today + ' ve ' + '36 ay öncesinin tarihi: ' + before36Months);
    }
    public void stringMethod(){
        string string1 = 'I am a Salesforce Developer';
        Boolean hasForce = string1.contains('force');
        System.debug('Cümlemizde force kelimesi var mı ? ' + hasForce);
        integer characterOfString = string1.length();
        System.debug('Cümledeki karakter sayısı: ' + characterOfString);
        string upperCaseString = string1.toUpperCase();
        System.debug('Cümlenin yeni hali: ' + upperCaseString);
    }
    public void dateMethod(){
        date today = date.today();
        System.debug('Bugünün tarihi: ' + today);
        Datetime todaysTime = Datetime.now();
        System.debug('Bugünün tarihi ve saati: ' + todaysTime);
        Datetime afterFiftyHours = todaysTime.addHours(50);
        System.debug('50 saat sonrası: ' + afterFiftyHours);
    }

    public string favoriteCafe = '';
    public string favoritePark = '';
    public string favoriteMall = '';
    public string favoriteStore = '';

    public string myFavoriteLocations(string city){
        System.debug('The most beautiful cafe in my city = ' + favoriteCafe + ', most beautiful park= ' + favoritePark + ', most beautiful mall= ' + favoriteMall + ', most beautiful store = ' + favoriteStore);

        return city;
    }
}
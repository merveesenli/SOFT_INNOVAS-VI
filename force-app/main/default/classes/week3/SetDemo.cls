public class SetDemo {
    public static void citySet(){
        Set<string> cities = new Set<string>();
        cities.add('Tokyo');
        cities.add('Nairobi');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Nairobi');

        System.debug('set of cities = ' + cities);

    }
    
    public static void randomIntegerSet() {
        Set<integer> integerSet = new Set<integer>();
        integerSet.add(13);
        integerSet.add(4);
        integerSet.add(543);
        integerSet.add(32);
        integerSet.add(4654);
        integerSet.add(13);
        integerSet.add(13);
        integerSet.add(235);
        integerSet.add(2);
        integerSet.add(5);
        integerSet.add(765);
        integerSet.add(34);
        integerSet.add(4);
        System.debug('integer set: ' + integerSet);
    } 
    
    public static set<string> capitalizeAllSet(set<string> setString) {
        Set<string> returnSet = new Set<string>();
        for (string eachStr : setString) {
            string tempStr = eachStr.toUpperCase();
            returnSet.add(tempStr);
        }
        
        return returnSet;
    }
}
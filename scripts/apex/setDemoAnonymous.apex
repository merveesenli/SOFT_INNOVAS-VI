SetDemo.citySet();
SetDemo.randomIntegerSet();

List<integer> listInteger = new list<integer>();
listInteger.add(13);
listInteger.add(10);
listInteger.add(10);
listInteger.add(234);
listInteger.add(34);
Set<Integer>setInteger = ListDemo2.setFromList(listInteger);
system.debug('set integer: ' + setInteger);

Set<string> cities = new Set<string>();
cities.add('Tokyo');
cities.add('Nairobi');
cities.add('Lisbon');
cities.add('Berlin');
cities.add('Tokyo');
cities.add('Berlin');
cities.add('Nairobi');        
Set<string> capCities = setDemo.capitalizeAllSet(cities);
system.debug('cap cities: ' + capCities);

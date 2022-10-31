MyCity mc = new MyCity();
mc.favoriteCafe = 'Spring';
mc.favoritePark = 'City Garden';
mc.favoriteMall = 'Trup Tower';
mc.favoriteStore = 'Coffe Time';
System.debug(mc.myFavoriteLocations('Istanbul'));












MathPractice m5 = new MathPractice();
m5.practiceFour(0);
m5.practiceFour(30);
m5.practiceFour(100);
m5.practiceFour(300);
m5.practiceFour(1000);



MathPractice m3 = new MathPractice();
m3.practiceThree(555, 278);



MathPractice m2 = new MathPractice();
m2.practiceTwo(60, 1.60);


MathPractice m1 = new MathPractice();
m1.practiceOne(5,10);


System.debug('Merve Esenli');

String myCar1 = 'Wolkswagen';
String myCar2 = 'Golf';
String myCar3 = 'Red';
String myCar = myCar1 + ' ' +  myCar2 + ' ' + myCar3;
System.debug(myCar1);
System.debug(myCar2);
System.debug(myCar3);
System.debug(myCar);

SalesforceDeveloper d1 = new SalesforceDeveloper();
d1.myFirstCode();

SalesforceDeveloper mf = new SalesforceDeveloper();
mf.myFavorites();

MyCity m1 = new MyCity();
m1.cityInformation();

MyCity m2 = new MyCity();
m2.stringMethod();

MyCity m3 = new MyCity();
m3.dateMethod();

date myBirthday = date.newInstance(1993, 5, 14);
integer day = myBirthday.day();
integer month = myBirthday.month();
integer year = myBirthday.year();
integer sum = day + month + year;
system.debug('My birthday date: ' + myBirthday);
system.debug(day + ' + ' + month + ' + ' + year + ' = ' + sum);

date myBDay = date.newInstance(1993, 5, 14);
system.debug('My birthday date: ' + myBDay);
integer day = myBDay.day();
integer month = myBDay.month();
integer year = myBDay.year();
integer totalNum = day + month + year;
system.debug(day + ' + ' + month + ' + ' + year + ' = ' + totalNum);

date marieCurieBirthDay = date.newInstance(1867, 11, 7);
system.debug('Marie Curie\'nin doğum tarihi: ' + marieCurieBirthDay);

date today = date.today();

integer daysDifference = marieCurieBirthDay.daysBetween(today);
integer diff1 = daysDifference/365;
system.debug('Farkın gün dikkate alınarak hesaplanması: ' + diff1);
integer monthsDifference = marieCurieBirthDay.monthsBetween(today);
integer diff2 = monthsDifference/12;
system.debug('Farkın ay dikkate alınarak hesaplanması: ' + diff2);
integer yearsDifference = today.year() - marieCurieBirthDay.year();
system.debug('Farkın yıl dikkate alınarak hesaplanması: ' + yearsDifference);

Boolean isLeapYear = date.isLeapYear(marieCurieBirthDay.year());
system.debug('Marie Curie\'nin doğum tarihi artık yıl mı? :' + isLeapYear);


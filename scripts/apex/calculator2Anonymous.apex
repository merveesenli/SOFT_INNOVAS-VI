Calculator2 c2 = new Calculator2();
date today = date.today();
boolean isLeap = c2.leapYearCheck(today);
system.debug('this year is leap? ' + isLeap);

integer x = c2.add(3, 5, 4);
system.debug('x is ' + x);

Integer s =c2.add(5, 100); 
system.debug('sum of 5 and 100 is ' + s);
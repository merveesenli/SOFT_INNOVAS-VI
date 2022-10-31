List <decimal> l1 = new List <decimal>();
l1.add(5);
l1.add(10);
l1.add(15);
l1.add(20);

system.debug('Sum is: ' + OperationsHelper.sum(l1));
system.debug('Average is: ' + OperationsHelper.average(l1));
system.debug('Highest is: ' + OperationsHelper.highest(l1));
system.debug('Lowest is: ' + OperationsHelper.lowest(l1));
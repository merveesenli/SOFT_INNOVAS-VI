DateTimeMethodsDemo dm = new DateTimeMethodsDemo();
dm.printOfferEndDateTime();
dm.printSubscriptionEndDate();
dm.calculateAgeMonths();
dm.calculateAgeDays();


datetime birthdate = datetime.newInstance(1993, 5, 14);
long longbirthdate = birthDate.getTime();
system.debug('long birth date = ' +  longbirthdate);
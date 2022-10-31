public class DateTimeMethodsDemo {
    public void calculateAgeMonths() {
        date birthDate = date.newInstance(1993, 5, 14);
        date todayDate = date.today();
        integer ageInMonths = birthDate.monthsBetween(todayDate);
        System.debug('My age in months is ' + ageInMonths);

    }

    public void calculateAgeDays() {
        date birthDate = date.newInstance(1993, 5, 14);
        date todayDate = date.today();
        integer ageInDays = birthDate.daysBetween(todayDate);
        System.debug('My age in days is ' + ageInDays);

    }

    public void printSubscriptionEndDate(){
        date subscriptionStartDate = date.today();
        date subscriptionEndDate = subscriptionStartDate.addDays(1000);
        System.debug('subscription will end ON ' + subscriptionEndDate);

        integer yearEndDate = subscriptionEndDate.year();
        Integer monthEndDate = subscriptionEndDate.month();
        System.debug('Year and month of End Date is ' + yearEndDate + ', ' + monthEndDate);
    }

    public void printOfferEndDateTime(){
        datetime offerStartDt = datetime.now();
        datetime offerEndDt = offerStartDt.addHours(51);
        System.debug('Offer will end on: ' + offerEndDt);
        date offerEndDate = offerEndDt.date();
        System.debug('offer end date is ' + offerEndDate);
    
    }

}
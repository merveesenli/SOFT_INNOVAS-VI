public class DateTimeDemo {
    public void dateTimeDemoMethod() {
        date currentDate = date.today();
        System.debug('Current date is ' + currentDate);

        date date1 = date.newInstance(2019, 1, 1);
        date date2 = date.newInstance(2020, 1, 1);
        Integer diffDate = date1.daysBetween(date2);
        System.debug('No of days ' + diffDate);

        date subDate = currentDate.addDays(-30);
        System.debug('Subscription end date is ' + subDate);



    }
}
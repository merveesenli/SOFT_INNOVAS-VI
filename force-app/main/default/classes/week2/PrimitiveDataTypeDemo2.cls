public class PrimitiveDataTypeDemo2 {
    
    public void printNewTime(){
        Time mytime = time.newInstance(18, 25, 15, 52);
        system.debug(mytime);

        Time mytime2 = time.newInstance(5, 15, 35, 2);
        system.debug(mytime2);


     }

    public void printNewDateTime(){
        date newDate= date.today();
        time newtime = time.newInstance(18, 25, 15, 52);
        
        datetime dt1 = datetime.newInstance(newDate, newtime);
        System.debug(dt1);

        datetime dt2 = datetime.newInstance(2025, 1, 9);
        System.debug('dt 2 is ' + dt2);

        datetime  dt3 = datetime.newInstance(2021, 10, 9, 10, 10, 10);
        System.debug('dt 3 is ' + dt3);

        Long longTime = 135489745265L;
        datetime dt4 = datetime.newInstance(longTime);

        Long LongTimeZero = 0;
        datetime dt41 = datetime.newInstance(LongTimeZero);
        System.debug('dt 4 is ' + dt4);
        System.debug('dt 41 is ' + dt41);

        Datetime dt5 = Datetime.newInstanceGMT(2021, 10, 9, 10, 10, 10);
        Datetime dt6 = Datetime.now();
        Datetime dt7 = System.now();
        System.debug('dt 5 is ' + dt5);
        System.debug('dt 6 is ' + dt6);
        System.debug('dt 7 is ' + dt7);

        







    }
}
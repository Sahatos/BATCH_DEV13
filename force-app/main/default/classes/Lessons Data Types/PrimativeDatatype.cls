public class PrimativeDatatype {
    public void printNewDate() {
        System.debug('print new date instanse');

        Date newDate = Date.newInstance(1995, 05, 17);
        System.debug('new data is ==>' + newDate);

        Date newDate2 =  Date.newInstance(2023, 01, 12);
        System.debug('new data2 is ==>' + newDate2);

        Date today = Date.today();
        System.debug('today is date ==>' + today);

    }
    public void printNewTIME() {
        Time myTime = Time.newInstance(18, 15, 10, 50);
        System.debug('My time is ==>' + myTime );
        
        Time meTime = Time.newInstance(9, 50, 30, 30);
        System.debug('Me time is ==>' + meTime );

    }
    public void printNewDateTime() {
        Date newDate = Date.today();
        Time newTime = Time.newInstance(12, 31, 0, 0);
        //1.
        Datetime dt1 = datetime.newInstance(newDate, newTime);
        System.debug('dt1 ==>' + dt1);
        //2. new datetime using year moth day
        Datetime dt2 = datetime.newInstance(2020,7,7 );
        System.debug('dt2 ==>' + dt2);
        //3. new datetime using year moth day
        Datetime dt3 = datetime.newInstance(2022, 7, 10, 5, 10 ,15 );
        System.debug('dt3  is ==>' + dt3);
        //4. milliseconds from 1 Jan 1970 00000 GMT
        Long longTime1 =0;
        Datetime dt4 = datetime.newInstance(longTime1);
        System.debug('dt4  is ==>' + dt4);
        //5.
        Long longTime2 = 12345477987L;
        Datetime dt5 = datetime.newInstance(longTime2);
        System.debug('dt4  is ==>' + dt5);
        //6. current time
        Datetime dt6 = Datetime.now();
        System.debug('dt6  is ==>' + dt6);
        //7 new instanteGMT
        Datetime dt7 = Datetime.newInstanceGmt(2021, 4, 9,15,15,15);
        System.debug('dt7  is ==>' + dt7);




    }

    
}

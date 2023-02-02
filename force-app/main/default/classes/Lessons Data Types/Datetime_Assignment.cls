public class Datetime_Assignment {
    public void diffofDate () {
        Date varTomorrowDate = Date.newInstance(2023, 01, 16);
        Date varTodaysDate = date.newInstance(2023, 01, 15);
        Integer difference = varTodaysDate.daysBetween( varTomorrowDate );
        System.debug('Difference days between today and tommorow is ' + difference);

       
    }
     public void  Timecheck () {

        Datetime varTomorrowDatetime = Datetime.newInstance(2023, 01, 16, 07, 00, 00);
        system.debug(' varTomorrowDatetime  ' + varTomorrowDatetime);
        Datetime var10DaysDatetime = Datetime.newInstance(2023 , 01, 26, 09, 00, 00);
        system.debug('  var10DaysDatetime  ' + var10DaysDatetime);
        Long varDatetimeLong = 12339874361L;
        system.debug('  varDatetimeLong  ' + varDatetimeLong);
        Datetime add7days = varTomorrowDatetime.addDays(7);
        system.debug('  varTomorrowDatetime added 7 days ' + add7days);
        Datetime add10days = var10DaysDatetime.addDays(10);
        system.debug('  var10DaysDatetime added 10 days ' + add10days);
        Datetime nowday = Datetime.now();
        system.debug('  Now ' + nowday);



     }
}
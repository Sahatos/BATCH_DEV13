public class DateTimeMethodsDemo {
    public void calculateAgeInMonths() {
     date birthDate = date.newInstance(1986, 03, 18);
     date todayDate = date.today();
     Integer ageInMonths = birthDate.monthsBetween(todayDate);
     system.debug('Devran age in months ' + ageInMonths);
     Integer ageInDays = birthDate.daysBetween(todayDate);
     system.debug('Devran age in days  ' + ageInDays);


    }
    public void printSubscriptionEndDate() {
        date SubStartDate = date.today();
        date SubEndDate = SubStartDate.addDays(1000);
        system.debug('sub and end days is ' + SubEndDate);

        Integer endYear = SubEndDate.year();
        Integer endMonth = SubEndDate.month();
        system.debug('year is ' + endYear);
        system.debug('Month ' + endMonth);
        
        }
        public void printOfferEndDateTime() {
            Datetime offerStart = Datetime.now();
            Datetime offerEnd = offerStart.addHours(51);
            system.debug('offer and datetime' + offerEnd);
            Date offerEndDate = offerEnd.date();
            system.debug('date of offer end is' + offerEndDate); 

            
}
public void birthDateTimeInMS() {
    Datetime birthDateMS = Datetime.newInstance(1986, 03, 18, 12, 43, 00);
    Long millesBirthDateTime = birthDateMS.getTime();
    system.debug(' My birth date in MS ' + millesBirthDateTime);
    

    
}


}
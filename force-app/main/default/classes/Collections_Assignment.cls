public class Collections_Assignment {
    public static void listMethods(Integer i) {

        List <String> days = new List <String>();
        days.add('Monday');
        days.add('Tuesday');
        days.add('Wednesday');
        days.add('Thursday');
        days.add('Friday');
        days.add('Saturday');
        days.add('Sunday');
        System.debug(' List of days  ' + days);
         String c1 = days.remove(i);
         
         System.debug( c1);

         Integer c2 =days.size();
         System.debug( c2);

         days.add(5, 'hello');
         System.debug( days);
         days.remove(5);
         System.debug( days);
         string get=days.get (2);
         System.debug( get);
         days.add('Monday');
         days.add('Tuesday');
         System.debug( get);

         
         

        
        


            }
     public static void setMethods (List<String> dayList) {
                dayList.add('Monday');
            System.debug('Daylist after adding one more Monday--> ' + dayList);



}

}
public class MapDemo {
    public static String retrieveMonths(Integer m) {
        String  month = ' ';
        Map<integer, String> mapMonth = new Map<integer, String>();
        mapMonth.put(1, 'January');
        mapMonth.put(2, 'February');
        mapMonth.put(3, 'March');
        mapMonth.put(4, 'Aprel');


        mapMonth.put(5, 'May');
        mapMonth.put(6, 'June');
        mapMonth.put(7, 'July');
        mapMonth.put(8, 'August');

        mapMonth.put(9, 'Semtember');
        mapMonth.put(10, 'October');
        mapMonth.put(11, 'Nowember');
        mapMonth.put(12, 'December');

       
       if ( mapMonth.containsKey(m))
           month = mapMonth.get(m);
           else {
            month = ' No such exist';
           }

        return month ;

    }
}
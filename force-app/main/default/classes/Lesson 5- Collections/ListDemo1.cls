public class ListDemo1 {
   

    public static string adaylar(Integer i) {
        List <String> adaylist = new List <String>();

        adaylist.add('Sencer');
        adaylist.add('EMINE');
        adaylist.add('SULTAN');
        adaylist.add('Tom');
        System.debug(' Candidates list is ' + adaylist );
       
        string ada = adaylist [i];
        return ada;




    }




    public static void Integer() {

        List <Integer> listinetr = new List <Integer>();
        listinetr.add(10);//0
        listinetr.add(15);//1
        listinetr.add(20);//2
        listinetr.add(15);//3
        listinetr.add(100);//4
        System.debug('o' + listinetr);

        Integer values = listinetr.get(4);
        System.debug( values );
        Integer values1 = listinetr[2];
        System.debug( values1 );





}





}

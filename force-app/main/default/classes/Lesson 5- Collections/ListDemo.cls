public class ListDemo {
    public static String CandidateList( Integer i) {

        //List
        //public static void CandidateList( ) {}
           // datetype
            //we can add ONLY string to the above list.
            //note: we CANNOT add integer, boolean, date or any other datatype.

        List <String> listCandidate = new List <String>();
        listCandidate.add('Mario');
        listCandidate.add('Polo');
        listCandidate.add('Mark');
        listCandidate.add('Tom');
        System.debug('Candidates list is ' + listCandidate );

        String candidate = ' ';
         
        if (i >=0 && i < listCandidate.size()) {
            candidate= listCandidate[i];
        } else {
            candidate = ' No such candidate found. Try again ';
            
        }
        return candidate;

    }


    public static void randomIntegerList() {

        
        List <Integer> listInteger = new List <Integer>();
        listInteger.add(10);//0
        listInteger.add(15);//1
        listInteger.add(20);//2
        listInteger.add(15);//3
        listInteger.add(100);//4
        System.debug(' list integer is ' + listInteger );

        //get value in from integer 

        integer getvalue = listInteger.get(3);

        // or we can get value from aonther way 

        integer getvalue1 = listInteger[4];
        system.debug( ' get value from integer 3 ' + getvalue );
        system.debug( ' get value from integer 4  ' + getvalue1 );



    }
    // static methods cats
    public static void allCats() {

      CatVitap mycat = new CatVitap ( 'Black ' , 'Yellow ');
      CatVitap ct = new CatVitap();

      List<CatVitap> cats = new List<CatVitap>();
      cats.add(mycat);
      cats.add(ct);
      system.debug( ' cats  ' + cats);
        if (!cats.isEmpty() ) {
        system.debug( cats[1]);
        
      }

    }
    public static void integerListALL() {
        List <Integer> listInteger = new List <Integer>();
        listInteger.add(10);//0
        listInteger.add(15);//1
        listInteger.add(20);//2
        listInteger.add(15);//3
        listInteger.add(100);//4

        for ( Integer eachIntger : listInteger ) {
            System.debug( eachIntger); 
            
        }

    }

    public static integer add(list<integer> listInt) {
        //a temporary variable to store sum of each integer in the list
        integer sum = 0;

        for (integer eachInt : listInt) {
            sum += eachInt;
            System.debug('Aratoplam '+ sum);
        }
        return sum;

    }

   
}
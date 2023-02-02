public class SetDemo {
    public static void citySet() {
        Set<string> cities = new Set<string>{ 'Tokiyo','Nairobia','Lisban','Berlin','Tokiyo','Nairobia','BERLIN'}; 
            // cities.add('Tokiyo');
            // cities.add('Nairobia');
            // cities.add('Lisban');
            // cities.add('Berlin');
            // cities.add('Tokiyo');
            // cities.add('Nairobia');
            // cities.add('BERLIN');
            System.debug( ' Some cities of world ' + cities);

    }
    public static void randomIntegerSet() {
        Set<Integer> rndomIng = new Set<Integer>() ; 
            rndomIng.add(15);
            rndomIng.add(20);
            rndomIng.add(50);
            rndomIng.add(15);
            rndomIng.add(100);
            rndomIng.add(15);
            rndomIng.add(50);
            System.debug( ' Randomly numbers are ' + rndomIng );
          
            //create a method. Which accepts a list<integer> and it retuns set<integer>
    //if our list has duplicate elements it will be removed.
       
    }
     public static set<Integer> setFromlist (list<integer> listInt) {
        Set<Integer> returnSet = new Set<Integer>();
        returnSet.addAll(listInt);
        return returnSet;

    }
        //we are creating a method.
        //which accepts set<string>.
        //return?
            //set<string> by converting each element of the given set to UPPERCASE.
             public static set<string> uppercaseSet(set<string> setStr) {
                //create a temp set in which we will add uppercase elements
                set<string> upprSet = new set<string>();
        
                system.debug('setStr => ' + setStr);
                //for each loop on setStr(passed in parameter)
                for (string eachStr : setStr) {
                    system.debug('each str issss ' + eachStr);
                    string tempstr = eachStr.toUpperCase();
                    upprSet.add(tempStr);
                }
        
                return upprSet;
            }

}
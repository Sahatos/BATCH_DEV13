Map<String,String> mapsCntCurrency = new Map<String,String>();
mapsCntCurrency.put('USA', 'Dollar');
mapsCntCurrency.put('Japan', 'Yen');
mapsCntCurrency.put('India', 'Rupuees');
mapsCntCurrency.put('India', 'Rupuee');
mapsCntCurrency.put('Turkey', 'Lira');
mapsCntCurrency.put('Germany', 'Mark');
mapsCntCurrency.put('France', 'Euro');
mapsCntCurrency.put('Russia', 'Ruble');
mapsCntCurrency.put('Poland', 'Euro');
mapsCntCurrency.put('Turkmenistan', 'Manat');
mapsCntCurrency.put('Germany', 'Mark');

System.debug( mapsCntCurrency );

String getvaluefroMap = mapsCntCurrency.get('Turkmenistan');
System.debug(' get value from key map '+ getvaluefroMap );

String getvaluefroMap1 = mapsCntCurrency.get('India');
System.debug(' India currency is  '+ getvaluefroMap1 );

Set<String> getkey = mapsCntCurrency.keySet();
System.debug( ' All coutnries is set '+ getkey);


list<String> getvalue = mapsCntCurrency.values();
System.debug( ' All coutnries is list '+ getvalue);

// Map<String,Integer> mapsCntCurrency1 = new Map<String,Integer>();
// mapsCntCurrency1.put('Null', 0);
// System.debug(mapsCntCurrency1);

//------- for each loop starts


Set<String> countySet = mapsCntCurrency.keySet();


for ( String eachkey: countySet) {
 String printString = ' County is ' + eachkey;

 String eachvalue = mapsCntCurrency.get(eachkey);
 printString += ' is currency ' + eachvalue;
   System.debug(printString);


}

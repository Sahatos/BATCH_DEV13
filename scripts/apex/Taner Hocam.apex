List<string> colors = new list<string>();
String[] colors1 = new List<String>();


List<String> colors = new String[1];
system.debug(colors);
colors.add('black');
system.debug(colors);



String[] colors = new String[3];
colors.add('blue');
system.debug(colors);
colors[0] = 'Green';
system.debug(colors);



List<Integer> list1 = new List<Integer>();
list1.add(1);
list1.add(2);
System.debug(list1);

List<Integer> list2 = new List<Integer>(list1);
System.debug(list2);


String[] declareList;
//declareList.add('test'); //System.NullPointerException: Attempt to de-reference a null object
//declare edersek sonrasında add methodu ile ekleme yapamıyoruz.
List<String> list1 = new List<String> {'alpha', 'beta', 'alpha', 'beta' };
declareList = list1;
declareList.add('gama');
System.debug(declareList);



set<String> set1 = new set<String> (list1);
System.debug(set1);

map<string, string> mapHavaDurumu = new map<string, string>{'Antalya' => 'Güneşli',
                                                            'Newyork' => 'Parçalı Bulutlu',
                                                            'Paris' => 'Sağanak Yağışlı'
};
mapHavaDurumu.put('Adana', 'Yanuyur.');
system.debug(mapHavaDurumu);
// DogHomework dg = new DogHomework();
// // Normal world
// // dg.Name = 'Alabay';
// // dg.age = 2;
// // dg.Color = ' white Black ';
// // system.debug( ' Name ' + dg.Name + ' Colar ' + dg.Color + '  age ' + dg.age );

// constructor world
DogHomework dg1 = new DogHomework( ' Bruno ' , ' Black', 2);
System.debug(' My dog is ' + dg1 );
dg1.checkAge();
DogHomework dg2 = new DogHomework( 'Majo ' , ' Brown', 6);
System.debug(' My dog is ' + dg1 );
dg2.checkAge();
DogHomework dg3 = new DogHomework( 'Alabay ' , ' White', 20);
System.debug(' My dog is ' + dg3 );
dg3.checkAge();
dg2.showDogCount();

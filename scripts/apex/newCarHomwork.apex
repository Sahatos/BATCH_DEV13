NewCarHomeWork cr = new NewCarHomeWork();
System.debug( ' Car Type is ' + cr.carType);
System.debug( ' Car Name is ' + cr.carName);
String carType = cr.startCar('GS', 'Lexus');
 cr.Accelerate(40);
 cr.checkSpeed();
 cr.Brake(10);
 cr.checkSpeed();
 cr.Accelerate(25);
 cr.checkSpeed();
 cr.stopCar(); 
 cr.checkSpeed();


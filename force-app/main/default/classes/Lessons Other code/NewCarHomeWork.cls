public class NewCarHomeWork {
   public Integer currentSpeed = 0;
   public String carType = ' ';
   public String carName= ' ';
     
    public String startCar( String carType, String carName) {

        System.debug(carType);
        System.debug(carName);
        return carType;
    }
        public void Accelerate (Integer x) {
        currentSpeed += x;
        system.debug( ' Current speed '+ currentSpeed );
                
    }
    public void Brake ( Integer y) {
        currentSpeed -= y;
        system.debug( ' Brake '+ currentSpeed );

}
    public void stopCar () {
        currentSpeed = 0;
        System.debug( ' car is stop ' + currentSpeed );


    }
    public void checkSpeed () {

        if (currentSpeed >= 0 && currentSpeed <= 30 ) {
            System.debug( ' City Mode  ' );
             
        } else if (currentSpeed > 31 && currentSpeed <= 60 ) {
            System.debug( ' Economy Mode ');

        } else {
            System.debug(' Sport Mode ');
        }
            
        }

    }




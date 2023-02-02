 public  class CarClass {
    //class variable
    //public means -> accessible outside of the class

    public String  carColor = ' ';
    public String carName = '';
    //private variable --> accessible ONLY inside of the class
     private Integer maxSpeed = 140 ;
     
    
     public void switchOn(){
     system.debug('starting the car nowww.');
    }


     public void  drive() {
     System.debug(' Driving ' + carName);

    }
     public void  driveAtMaxSpeed() {
      String decsription = ' Driving ' + carName + ' of color ' + carColor + ' at ' + maxSpeed + ' km/h ' ;
       System.debug(decsription);

    }

}
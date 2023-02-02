public class DogHomework {
    public String Name ;
    public String Color;
    public Integer age;
    public static Integer count = 0 ;


    public DogHomework() {
        age = 1;
        count ++;
        checkAge();
        showDogCount();

    }
    public DogHomework ( String n, String clr, Integer a) {
        name = n;
        color = clr;
        age = a ;       
        count ++;
        checkAge();
        showDogCount();

    }
    
    public void checkAge ( ) {
         if (age >= 0 && age <= 1 ) {
            system.debug( 'Puppy Dog ');
         } else if (age >=1 && age <= 3) {
            system.debug( 'Young Dog ');
         } else if (age >=3 && age <= 5){
            system.debug( 'Adult  Dog');

         }  else if ( age > 5){
            system.debug( 'Old Dog');
            
         }       

    }
     public void showDogCount ( ) {
     System.debug(  ' Total number of dogs are  ' + count );
  
      }


}
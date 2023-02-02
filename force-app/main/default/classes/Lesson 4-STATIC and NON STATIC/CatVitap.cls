public class CatVitap {
    public String Name ;
    public String Color ;
     //constructor name is same as class name
    //it doesn't return anything.
        //we use constructor if we want to execute 
        //some apex code as soon as new instance is created.
    public CatVitap() {
        System.debug('-called constructor--');
     
    }
    //we can have multiple constructors.
    //provide number or params, or datatype of params are differnt.

     public CatVitap (String a ,String b ) {
        name = a;
        color = b;
        sleeping();

        


}
     public void sleeping ( ) {
       System.debug( name + ' is sleeping ');

        }

}
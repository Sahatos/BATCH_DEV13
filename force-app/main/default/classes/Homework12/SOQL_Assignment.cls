public class SOQL_Assignment {
    public static void WhereClause () {
        list<Contact> lstcontact = [Select id , name , phone from Contact where name like 'A%' ];
        System.debug( ' List of all A Contacts '+ lstcontact);
   

    }
     
    public static void FromMethod(){

        list<Contact> lstcontact = [ Select id, lastname, phone from Contact];
        
         for (Contact lastnamephone : lstcontact) {

            String lstname = lastnamephone.LastName;
            String lstphone = lastnamephone.Phone;
            System.debug( ' Last name is   ' + lstname + ' phone is ' + lstphone) ;

            
         }
        
    }



    
}
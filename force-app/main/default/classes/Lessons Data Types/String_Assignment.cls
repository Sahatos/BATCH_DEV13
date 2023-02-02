public class String_Assignment {
    public  void stringMethods() {
        String localstring = 'Thanks for the session on the string';
        System.debug( localstring );
        Integer localstrignlenght = localstring.length();
        system.debug(' Lentgh of sentence is ==> ' + localstrignlenght);
        String localstrignlenght1 = localstring.reverse();
        system.debug(' Reverce of sentence is ==> ' + localstrignlenght1);
        String localstrignlenght2 = localstring.toUpperCase();
        system.debug(' Uppercase of sentence is ==> ' + localstrignlenght2);
        Boolean localstrignlenght3 = localstring.containsAny ('on');
        system.debug(' true of falce  ==> ' + localstrignlenght3);
        Boolean check = localstring.contains('session');
        system.debug(' Chechk of sentence is ==> ' + check);
        Boolean check1 = localstring.contains('Session');
        system.debug(' Chechk of sentence is ==> ' + check1);
        Boolean check2 = localstring.containsIgnoreCase ('Session');
        system.debug(' Chechk of sentence is ==> ' + check2);



    }
    
}
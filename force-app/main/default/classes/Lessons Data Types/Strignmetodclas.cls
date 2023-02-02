public class Strignmetodclas {
    public void Strignmetodclas1() {
     String sesionDescription ='learnig instrign methods in apex langua';
     System.debug(sesionDescription);
      // 1. length
      Integer lenghtOfStr = sesionDescription.length();
      System.debug('lenght of string '+ lenghtOfStr);
      // 2. convert string to Capital
      String capitalStr =sesionDescription.toUpperCase();
      System.debug(' capital'+ capitalStr);
      // check if your string is apex
      Boolean containApex =sesionDescription.contains('apex');
      System.debug(' Is it string ?????'+ containApex );
      Boolean containApex2 =sesionDescription.contains('Methods');
      System.debug(' Is it string ?????'+ containApex2 );
      Boolean containApex3 =sesionDescription.containsIgnoreCase('Apex') ;
      System.debug(' ignore case ?????'+ containApex3 );
      Boolean containSalesforce =sesionDescription.containsIgnoreCase(' salesforce ') ;
      System.debug('containes salesforce ? '+ containSalesforce );
      String username  = 'Vitap     ';
      System.debug(' lentgh of username '+ username.length());
      String username2  = username.trim();
      System.debug(' lentgh of username '+ username2.length());




    }
}
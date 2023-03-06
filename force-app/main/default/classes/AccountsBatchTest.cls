@isTest
public class AccountsBatchTest {
    @isTest
    public static void testBatch1 (){
        //1. Data preparation.
        List<account> listAcc = new list<account>();
        for (Integer i = 0; i < 900; i++) {
            account a = new account();
            a.Name = 'batch test ' + i;
            a.Active__c = 'Yes';
            a.Description = 'TEST. ';
            listAcc.add(a);
        }
        insert listAcc;
        //END OF data preparation;

        //2. execute in between Test.startTest and Test.stopTest.
        Test.startTest();
        AccountsBatch ab = new AccountsBatch();
        Database.executeBatch(ab, 900);
        Test.stopTest();

        //3. assertion
        List<Account> allAccounts = [Select Description from account ];
        for ( account ac : allAccounts){
            Asset.isTrue(ac.Description.containsIgnoreCase('batch'));
        }


    }
    
 }


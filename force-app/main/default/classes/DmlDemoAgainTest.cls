@isTEst
public class DmlDemoAgainTest {
    @istest
    private static void testInsertStdObj() {
        DmlDemoAgain.dmlInsertDemo_stndObj(); //if this method works correctly, 
        //then we would GET one record in soql
        //
        account acc = [select id, name from account where name = 'softinnovas' limit 1];
        system.assert(acc != null);
        system.assertEquals('softinnovas', acc.Name);
    }
    @istest
    private static void testInsertCstObj() {
      // call method

        DmlDemoAgain.dmlInsertDemo_cstmObj();
        // SQOL AND assert
        List<Salesforce_Project__c> listSp = [Select id , name, project_name__c from Salesforce_Project__c 
        where project_name__c = 'Learn dml batch 13'  ];
        System.assertEquals(1, listSp.size() );


}
//_______________________27.02.2023 begeinng_________________________________________________________________________________________________
@isTest
    private static void testUpdateDemo_stndObj3() {
        //1. prepare required data
        Account acc = new account();
        acc.Name = 'softinnovas';
        insert acc;
        
        //call method to test
        DmlDemoAgain.dmlUpdateDemo_stndObj3();

        //how can we verify?
        //assertion.
        //Fetch the updated record by SOQL
        Account updatedAcc =  [select id, name, phone from account limit 1];
        system.assertEquals('SoftInnovas Inc.', updatedAcc.Name);
        assert.areEqual('SoftInnovas Inc.', updatedAcc.Name );
        assert.areEqual('9556789451', updatedAcc.phone);
    }

    @isTest
    private static void testUpdateDemo_stndObj2() {
        //1. prepare required data
        Account acc = new account();
        acc.Name = 'softinnovas';
        insert acc;
        
         //call method to test
         DmlDemoAgain.dmlInsertDemo_stndObj2();

          //how can we verify?
        //assertion.
        //Fetch the updated record by SOQL
        Account updatedAcc =  [select id, name, phone from account limit 1];
        system.assertEquals('SoftInnovas Inc.', updatedAcc.Name);
        assert.areEqual('SoftInnovas Inc.', updatedAcc.Name );
        assert.areEqual('9556789451', updatedAcc.phone);




} @isTest
private static void testdmlInsertDemo_cstmObj2() {
    //1. prepare required data
    Salesforce_Project__c spp = new Salesforce_Project__c ();
    spp.Project_Name__c = 'Test';
    insert spp;
    
     //call method to test
     DmlDemoAgain.dmlInsertDemo_cstmObj2();

      //how can we verify?
    //assertion.
    //
   //verify if ticket is created OR not.
   Salesforce_Ticket__c st = [select subject__c, priority__c, salesforce_project__c from 
   Salesforce_Ticket__c where Subject__c = 'create related record'];
   assert.areEqual(spp.id, st.Salesforce_Project__c);
    





}
}
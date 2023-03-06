    // 02.02.2022 First day to learn DML LESSON

 public  class DLMDemo {
    public static void dmlInsertDemo_stndObj() {
//create instance of sobject
        account acc = new account ();//similar to clicking new button
 //set field names
        acc.Name= 'Softinnovas';
//insert dml to create records
        insert acc;

        System.debug(acc);

    }

     public static void dmlInsertDemo_customObj() {
       //create instance
       Salesforce_Project__c sp = new Salesforce_Project__c();
       //set field names
       sp.Project_Name__c = 'Lean dml to batch 13';
       sp.Description__c = 'doing good everybody';

       //save it by 'insert dml'
       insert sp;
   }
        public static void dmlUpdate_standartObj() {
            Account ac = new account();
            ac.Name = 'Salesforce';
            system.debug('acc before inserting : ' + ac);
            insert ac;
            system.debug('acc insert called : ' + ac);
    
            //update any record. WE MUST HVE ID.
            ac.name = 'Salesforce Inc.';
            //update dml
            update ac;
            system.debug('after updating ' + ac);
           
     }
         // Update exuciting record 
          public static void dmlUpdateDemo_standartObJ3() {

            Account acc = [ Select id, name from account where name = 'Softinnovas' limit 1 ];

            //update name
            acc.name = 'Softinovas INC';
            acc.phone = '999999999991';
            // update dml
            update acc;

                
     }
     public static void dmlUpdateDemo_standartObJ4() {

        Account acj = [ Select id, name from account where name = 'Salesforce' limit 1 ];

        //update name
        acj.name = 'Salesforce INC';
        acj.phone = '562192';
        // update dml
        update acj;

    }
    //creating related contact record of a particular account
    public static void dmlInsertDemo_stndObj2() {
        //fetch account record
        account ac = [select id, name from account where name like 'Softinnovas%' limit 1];
        //create contat instance
        contact c = new contact();
        c.LastName = 'Biden';
        //related field id
        c.AccountId = ac.Id;
        //create contact record
        insert c;

        
    }
       // 02.03.2022 Second day to learn DML LESSON


    public static void dmlInsertDemo_cstObj5() {
      Salesforce_Project__c sp = [select id, name from Salesforce_Project__c 
                                  ORDER BY CreatedDate desc limit 1];
     Salesforce_Ticket__c newST = new Salesforce_Ticket__c ( );
     newST.Subject__c= ' created related record';
     newST.Priority__c = 'High';
     newST.Requested_by_date__c = date.today();
     newST.Status__c = 'New';

     newST.Salesforce_Project__c = sp.id;
     insert newST;
       
    }
     public static void dmlmultypileRecordsInsert_right1() {

        List<account> LisAcc = new List<account>();
        account acc1 = new account ();
        acc1.Name = ' Serdar';
        LisAcc.add(acc1);

        account acc2 = new account ();
        acc2.Name = ' Bayram';
        LisAcc.add(acc2);

        account acc3 = new account ();
        acc3.Name = ' Guga';
        LisAcc.add(acc3);

        insert LisAcc;

        
     }


     public static void dmlMultipleRecordInsert_right2() {
        List<account> listAcc = new list<account>();
        for (Integer i = 0; i < 160; i++) {
            account acc = new account();
            acc.Name = 'Softinnovas v'+i;
            acc.Phone = '98765412'+i;
            acc.AccountNumber = 'ACS ' + i;
            acc.Active__c = 'Yes';
            listAcc.add(acc);
        }
         //execute insert DML only if listACC is NOT EMPTY.
            // isEmpty() -> true when no record. 
            // isEmpty() -> false when records are present in list 
         if (!listAcc.isEmpty()) {
            insert listAcc;
            }

          }


     public static void dmlMultipleRecordUpdate_right1 () {
            List<Account> listAccount = [ select id , name from account ORDER BY 
                                          createddate desc limit 20];

            for (account acc : listAccount) {
                acc.Name= acc.name + 'B O';
                
            }  
            update listAccount;                            
            
          }

                //update account name 
                //append Yy --> if active is Yes
                //append Nn --> if active is null
            public static void dmlMultipleRecordUpdate_right2() {
                list<account> listAccount = [select id, name, Active__c from account];

            list<account> updateAccount = new list<account>();
            //System.SObjectException: SObject row was retrieved via SOQL 
            //  without querying the requested field: Account.Active__c
            for (account eachAcc : listAccount) {
                if (eachAcc.Active__c == 'Yes') {
                    eachAcc.Name += ' Yy';
                    updateAccount.add(eachAcc);
                }
            }
            if (!updateAccount.isEmpty()) {
                update updateAccount;

             }
        
       }
   
   
   
   
   
   
   
    }

 















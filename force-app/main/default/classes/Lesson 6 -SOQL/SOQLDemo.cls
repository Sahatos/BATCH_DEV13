public class SOQLDemo {
    public static void  accountSOQL_1() {
        list<Account> listaccnt = [SELECT id , name FROM Account ];
        System.debug( ' list of account '+ listaccnt );

    }
    public static void  accountSOQL_11 () {
        account acc = [ SELECT id, name , Phone FROM account ORDER BY createddate DESC LIMIT 1];
        System.debug( ' account  records '+ acc );

    }

    public static void  accountSOQL_2 () {
        account acc1 = [ SELECT id, name , Accountnumber, Phone FROM account ORDER BY createddate DESC LIMIT 1];

        String accName = acc1.Name;
        String AccPhone = acc1.Phone;
                     
        System.debug( ' account  name '+ accNAME + ' ACCOUNT pHONE ' +  AccPhone + ' account number is ' + acc1.AccountNumber) ;
}
       public static void accountSOQL_33() {
         list<Account> listAccount = [SELECT id , name, Accountnumber, Phone FROM account ORDER BY createddate DESC ];
       
         for ( Account eachacc :  listAccount ) {
           
            String accName1 = eachacc.Name;
            String AccPhone1 = eachacc.Phone;
            System.debug(' account  name '+ accName1 + ' ACCOUNT pHONE ' +  AccPhone1 + ' account number is ' + eachacc.AccountNumber );


        }
       
    //  public static void accountSOQL_3() {
    //  list<account> listAccount = [SELECT id, phone, name, accountnumber FROM account ORDER BY createddate DESC];
    // //for each loop on the list.
    //     for (account eachAcc  : listAccount) {
           
    //         system.debug('each acc: ' + eachAcc);
    //         string accName = eachAcc.Name;
    //         string accPhone = eachAcc.Phone;
    //         system.debug('accName ' + accName + ' phone ' + accPhone + ' accountnumber is ' + eachAcc.AccountNumber);
            

        // }
        }
        public static void accoun_filter() {
            String accountname = 'GenePoint';
            // list<account> listacc = [SELECT name, phone FROM account WHERE name = 'GenePoint'];
            // list<account> listacc = [SELECT name, phone FROM account WHERE name LIKE '%Point'];
            List<account> listacc = [ SELECT name , Phone  FROM account WHERE name = :  accountname ];
            system.debug('filter 1  ' + listacc );

        }
         public static void childToParent_SOQL1(){
            
             list<contact> listContacts = [select id, name, account.name, account.industry 
             from contact where account.industry = 'energy'];
             for (contact eachContact : listContacts) {
             string accName = eachContact.account.Name;
              system.debug('contact name is ' + eachContact.Name + ', its account name is ' + accName + 
                ' and acc industry is ' + eachContact.account.industry);
            }

        }
        public static void paretntoChildSOQL1 (){
            //fetch account and closed won opportunities.
          list<account>  listaccount = [ select name, type, annualrevenue,
                                         (select name, amount from Opportunities where stagename = 'Closed Won')
                                          from account where type = 'customer - direct'];

           for (account eachAcc : listaccount ) {
            System.debug( ' account name is ' + eachAcc.Name + ' it annualrevenue is ' + eachAcc.AnnualRevenue  );

            System.debug('--------');

            list<Opportunity> eachAccOpp = eachAcc.Opportunities;

             for (Opportunity eachOpp : eachAccOpp) {
                System.debug( ' Opp name is ' + eachOpp.Name + ' and amount is  ' + eachOpp.Amount  );
                
                }
                System.debug('_______');
            
           }
          
        }
        public static void parentToChild_SOQL2() {
            list<salesforce_project__c> listSP = [select id, name, project_name__c,
                                     (select subject__c, priority__c from salesforce_tickets__r) 
                                     from salesforce_project__c];
            //we need to print two things.
                 //1. total number of tickets in each Project.
                 //2. high priority tickets in each project.
            for (salesforce_project__c eachSP : listSP) {
                 //get all tickets of each project in List<salesforce_ticket__c>
                 list<salesforce_ticket__c> listST = eachSP.salesforce_tickets__r;
                 
                 //total number of tickets by using .size() method of list. 
                      //==> 1st requirement is Satisfied.
                 integer totalTickets = listST.size();
                 //2. high priority tickets
                 integer highPriorityTickets = 0;
                 //each ticket and check if priority is high
                 for (salesforce_ticket__c eachST : listST) {
                      //checking priority == high
                      if (eachST.Priority__c == 'High') {
                           //increment the counter.
                           highPriorityTickets++;
                      }
                 }
                 system.debug('Project name is ' + eachSP.Project_Name__c + ', total tickets ' + totalTickets + ', hp tickets ' + highPriorityTickets);
            }
          }
       }
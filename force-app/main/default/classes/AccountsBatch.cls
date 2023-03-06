public class AccountsBatch implements Database.Batchable<SObject>, Database.stateful {
    //start method -> SOQL QUERY -> ACCOUNT -> 50k
    Integer recordCount = 0;

    public Database.QueryLocator start(Database.BatchableContext bc){
        system.debug('inside start method.');
        Database.QueryLocator acc = database.getQueryLocator([select id, name, active__c, Description from account]);
        return acc;
    }

    public void execute(Database.BatchableContext bc, list<account> scope){
        system.debug('inside execute method');
        system.debug('Check record FIRST ' + recordCount);
        //update account records
        list<account> updateAccount = new list<account>();
        for (account eachAcc : scope) {
            if (eachacc.Active__c != 'No') {
                eachAcc.Description += '...Updated via batch';
                updateAccount.add(eachAcc);

            }
        }
        if (!updateAccount.isempty()) {
            update updateAccount;
            recordCount += updateAccount.size();
            system.debug('Check record SECOND ' + recordCount);

        }
    }


    //finish method
    public void finish(Database.BatchableContext bc){
        system.debug('finished with all records.');
        system.debug('Check record Final ' + recordCount);
    }
}
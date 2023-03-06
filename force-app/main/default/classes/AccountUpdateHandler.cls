public with sharing class AccountUpdateHandler {
    //invocableMethod annotation helps us to call apex via flows or PB
    @InvocableMethod
    public static void updateWebiste(List<id> accountIds) {
        List<account> listAccounts = [select id, website from account where id in :accountIds];
        for (account eachAcc : listAccounts) {
            eachAcc.Website = 'www.softinnovas.com';
        }
        update listAccounts;
    }
}
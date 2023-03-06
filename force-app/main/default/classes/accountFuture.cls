public class accountFuture {
    @future
    public static void updateHighestAmountOpportunityName(set<id> accountIDs) {
        List<Account> allAccounts = [Select id, name, highest_amount_opportunity_name__c, (select id, name, amount from opportunities where amount != null order by amount desc) from account where id in: accountIDs];
        
        for (Account eachAcc : allAccounts) {
            if (eachAcc.Opportunities.size() > 0) {
                eachAcc.highest_amount_opportunity_name__c = eachAcc.Opportunities[0].name;
            } else {
                eachAcc.highest_amount_opportunity_name__c = null;
            }            
        }        
        update allAccounts;
    }
}

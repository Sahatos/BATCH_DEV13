List<Account> allAccounts = [Select id from account];
set<Id> accountIDs = new set<ID>();
for (Account eachAcc : allAccounts) {
    ID x = eachAcc.ID;
    accountIDs.add(x);
}
AccountFutureApex.updateHighestAmountOpportunityName(accountIDs);
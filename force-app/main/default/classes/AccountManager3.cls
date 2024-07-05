public with sharing class AccountManager3 {
    public AccountManager3() {

    }
    @AuraEnabled
    public List<Account>  getAccounts(){
        try {
            return [Select id,Name from Account limit 100];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}
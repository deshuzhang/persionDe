@isTest
public class AccountTriggerTest {
    
    @isTest static void TestCreate200Records(){
        
        List<Account> accts = new List<Account>();
        for(Integer i=0; i < 20; i++) {
            Account acct = new Account(Name='Test Account ' + i, BillingState = 'CA');
            accts.add(acct);
        }
        Test.startTest();
        insert accts;
        Test.stopTest();
        System.assertEquals(200, [SELECT Count() FROM Account WHERE ShippingState = 'CA' ],'It is false.');
    }
}
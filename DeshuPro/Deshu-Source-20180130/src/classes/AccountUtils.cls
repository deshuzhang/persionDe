public class AccountUtils {
    public static List<Account> accountsByState(String st){
        List<Account> acctList=[select id,name from account where BillingState=:st];
        return acctList;
    }
}
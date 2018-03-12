public class AccountHandler {
	public static Account insertNewAccount(String ss){
       
        Account acc=new Account(Name=ss);
        
      try{
          insert acc;
          return acc;
      }
        catch(DmlException e){
            return null;
        }
    }
}
public class ContactSearch{
    public static List<Contact> searchForContacts(String a1,String b1){
        List<Contact> con=new List<Contact>();
        con=[select name from Contact Where LastName=:a1 and MailingPostalCode=:b1];
        return con;
    }
}
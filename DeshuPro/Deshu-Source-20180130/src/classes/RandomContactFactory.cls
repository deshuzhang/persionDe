public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(integer numOfContacts,string lastname){
        List<Contact> contacts=new List<Contact>();
        for(integer i=0;i<numOfContacts;i++){
            Contact con=new Contact(FirstName='Test'+i,LastName='lastname');
            contacts.add(con);
        }
        return contacts;
        
        
    }
}
public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(String n){
       List<List<SObject>> searchList = [FIND :n IN ALL FIELDS 
       RETURNING contact(Name), lead(FirstName,LastName)];
        return searchList;
    }
}
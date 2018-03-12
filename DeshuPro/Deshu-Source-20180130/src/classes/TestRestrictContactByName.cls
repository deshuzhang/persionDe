@isTest
private class TestRestrictContactByName {

	@isTest static void TestContact() {
		
		List<contact> listCon = new List<contact>();
		Contact c1 = new Contact(FirstName='zhang', LastName='deshu');
		Contact c2 = new Contact(LastName = 'INVALIDNAME');
        listCon.add(c1);
		listCon.add(c2);
        Test.startTest();
        Database.SaveResult[] result = Database.insert(listCon, false);
        Test.stopTest(); 
		
       		
	}
	
}
@isTest
public class TestVerifyDate {
    static testMethod void TestVerifyDate(){
        VerifyDate.CheckDates(system.today(), system.today().addDays(10));
        VerifyDate.CheckDates(system.today(), system.today().addDays(78));
    }
}
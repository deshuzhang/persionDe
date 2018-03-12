trigger AccountAddressTrigger on Account (before insert,before Update){
    for(account acc:trigger.new){
        If(acc.Match_Billing_Address__c==true && acc.BillingPostalCode!=Null){
            acc.BillingPostalCode=acc.ShippingPostalCode;
        }
    }
}
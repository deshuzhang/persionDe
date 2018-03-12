trigger AutoConvertLead on Lead (after insert, after update) {

    List<Lead> listLeadNew = trigger.new;
    for(integer i=0;i<listLeadNew.size();i++){
    Lead leadNew = listLeadNew.get(i);
    
    if(leadNew.Rating.equals('very hot') && !leadNew.Status.equals('Closed - Converted')) {
        Database.LeadConvert LC = new database.LeadConvert();
        LC.setLeadId(listLeadNew[i].id);
        
       /* LC.setConvertedStatus('Closed - Converted');*/
       LeadStatus convertStatus = [SELECT Id, MasterLabel FROM LeadStatus 
                            WHERE IsConverted=true LIMIT 1];
            LC.setConvertedStatus(convertStatus.MasterLabel);
        
        Database.LeadConvertResult LCR = Database.convertLead(LC);
        System.assert(LCR.isSuccess());
    }
    }
    
    /* List<Lead> listLeadNew = trigger.new;
    Lead leadNew = listLeadNew.get(0);
    
    if(leadNew.Rating.equals('Very Hot') && !leadNew.Status.equals('Closed - Converted')) {
        Database.LeadConvert LC = new database.LeadConvert();
        LC.setLeadId(leadNew.id);
        
        LC.setConvertedStatus('Closed - Converted');
        
        Database.LeadConvertResult LCR = Database.convertLead(LC);
        System.assert(LCR.isSuccess());
    }*/
    
}
trigger ProDupOpptyProduct on OpportunityLineItem (before insert) {
    for(OpportunityLineItem Product:trigger.new){ 
        list<OpportunityLineItem> OpptyProd=[SELECT Product2Id FROM OpportunityLineItem 
                                         where OpportunityId=:Product.OpportunityId 
                                          and Product2Id=:Product.Product2Id];
        if(OpptyProd!=null){
            Product.Product2Id.addError('Product is exist!');
            
        }
        
    }
}
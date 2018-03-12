trigger ClosedOpportunityTrigger on Opportunity (before insert,before update) {
	List<Task> TaskList= new List<Task>();
    for(opportunity opp:Trigger.new){
        if(opp.stagename=='Closed Won'){
            Task t=new Task();
            t.Subject='Follow Up Test Task';
            t.WhatId=opp.Id;
            Tasklist.add(t);
        }
    }
    if(Tasklist.size()>0){
    insert Tasklist;
    }
}
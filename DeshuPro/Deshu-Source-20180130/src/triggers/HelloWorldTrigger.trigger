trigger HelloWorldTrigger on Account (before insert) {
    for(account a:Trigger.New){
        a.Description='new descripion';
    }
}
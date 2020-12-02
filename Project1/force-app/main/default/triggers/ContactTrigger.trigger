trigger ContactTrigger on Contact (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    if(trigger.isBefore) {
        if(trigger.isInsert) {

            ContactTriggerHandler.ForContactDuplicates(trigger.new);      
    } else if(trigger.isAfter) {
        if(trigger.isInsert) {
    } else {
        system.debug('Unknown Trigger Type');
    }
}
        
}
}
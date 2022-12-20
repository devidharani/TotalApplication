trigger Books on Book__c (before insert) {
 for(Book__c Record:Trigger.new){
     if(Record.Available_Books__c==0){
         Record.Status__c='Unavailable';
     }
     else{
         Record.Status__c='Available';
     }
 }
}
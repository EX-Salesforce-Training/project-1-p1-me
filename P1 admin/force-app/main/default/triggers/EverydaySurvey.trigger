trigger EverydaySurvey on Survey__c (after insert){
    
    List<Survey__c> surveys = [Select User__c from Survey__c where 
                             	Have_you_had_a_cough_recently__c = 'Yes' or
                              	Have_you_had_diarrhea_recently__c = 'Yes' or
                             	Have_you_had_fatigue_recently__c = 'Yes' or
                              	Have_you_had_fever_or_chill_recently__c = 'Yes'or
                              	Have_you_had_headache_recently__c = 'Yes' or
                              	Have_you_had_nausea_vomiting_recently__c = 'Yes' or
                              	Have_you_had_recent_loss_of_smell__c = 'Yes'or
                              	Have_you_had_recent_loss_of_taste__c = 'Yes'or
                              	Have_you_had_runny_stuffy_nose_recently__c = 'Yes'or
                             	Have_you_had_sore_throat_recently__c  = 'Yes']; 
    
    
    List<User> users = new List<User>();
    
    for(Survey__c s: surveys){
       // s.User__c.Status__c = 'Symptoms';
    }
   	
                
    
}
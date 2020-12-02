public class ContactTriggerHandler {

    
 public static List<Contact> ForContactDuplicates(List<Contact> newContacts) {
        // Step 1 - We extract the phone from new contacts and store it in a set.
        // This will give us a collection of unique phone numbers.
        
        // Declare our set collection.
        Set<String> newHomePhoneSet = new Set<String>();
        // We loop through our trigger context records we called newContacts.
        for(Contact c: newContacts) {
            // Check to make sure the phone isn't null.
            if(c.HomePhone!= null) {
                newHomePhoneSet.add(c.phone);
            }
        }
		// Step 2 - We find duplicate contacts in the database based on the phone set. 
		// We store these in a map using the Phone as the key, and the contact as the 
		// value.       
		
		// Declare our map collection.
        Map<String, Contact> existingContactMap = new Map<String, Contact>();
        // Find the duplicates using a SOQL Loop.
        for(contact existingContact: [SELECT id, Name, HomePhone, MailingCity FROM contact WHERE phone in :newHomePhoneSet]) {
            existingContactMap.put(existingContact.HomePhone, existingContact);
        }
		// Step 3 - Compare and addError if it is a duplicate.
		
        // We cycle through newContacts, our trigger context.
        for(contact newContact: newContacts) {
            // We attempt to store a contact using the phone of the new contact.
            contact duplicateContact = existingContactMap.get(newContact.Homephone);
            // If we successfully found a value in our map.
            if(duplicateContact != null) {
                newContact.addError('Phone already exists in system. ' + duplicateContact.Name);
            }
        }
        
        
     	return newcontacts;
    }
}
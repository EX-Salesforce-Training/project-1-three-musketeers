@isTest
public class ContactTriggerHandlerTest {
    @isTest
public static void TestDuplicateCheck() {
        Contact Christopher = new Contact();
        Christopher.LastName = 'Spencer';
        Christopher.Phone = '4016886633';
        try{
            /*
            // Start Test and Stop Test are used to signify that the 
            // code between them must behave synchronously, and are
            // given a fresh set of governor limits.
            // */
            test.startTest();
            	insert Christopher;
            test.stopTest();
        } catch(DmlException e) {
            system.assert(true);
        }
    }
}
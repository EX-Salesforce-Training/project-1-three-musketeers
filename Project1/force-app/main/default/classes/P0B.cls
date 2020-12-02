///////////////////////////////////////////////////////////////
    //
    // Name: Project Zero B
    // Author: Christopher Spencer (ccgs77@gmail.com) 
    // Created: 13/11/2020
    // Last Modified: 15/11/2020
    // Description: Series of apex methods to demonstrate
    // basic understanding of coding concepts.
    //
///////////////////////////////////////////////////////////////
public class P0B { 
    /*
 * 1. Return the nth Fibonacci number
 * Test Cases:
 * Input: 0     Output: 0
 * Input: 1    Output: 1
 * Input: 2     Output: 1
 * Input: 10    Output: 55
*/
    public static Integer nFibonacci(Integer n) {
		integer a = 0;
        integer b = 1;
        integer c = 0;
        
        for(integer i = 0; i <= n; i++) {
            c = a + b;
            a = b;
            b = c; 
            system.debug('Value of A: ' + a + 'Value of B: ' + b + 'Value of C: ' + c); 
        }
        return n;
}
    
/*
 * 2. Sort a list of integers.
 * Test Cases:
 * Input: [2,4,5,1,3,1]     Output: [1,1,2,3,4,5]
 * Input: [5,4,3,2,1]     Output: [1,2,3,4,5]
 *
 * Don't use the sort() method... that would be lame.
*/
/*
public static List<Integer> sortList( List<Integer> intList ) {
    List<integer> sortList = new List<Integer>{2,4,5,1,3,1};
    for(Integer i = 0; i < sortList.size(); i++) {
for(integer n = i+1; n <= sortList.size() -1; n++){
  integer x = 0;
  if(sortList[i] < sortList[n]){
   x = integerList[i];
   sortList[i] = sortList[n];
   sortList[n] = x;
   system.debug(List<Integer>);
  }
}
    
}
*/    
/*
 * 3. Return the factorial of n.
 * Test Cases:
 * Input: 0    Output: 1
 * Input: 1    Output: 1
 * Input: 3    Output: 6
*/
/*
public static Integer nFactorial( Integer n) {
    return n;
}

}
/*
 * 4. Rotate left
 * Given a list, list, and an integer, n, rotate the values in list left n times and return list
 * Test Cases:
 * Input: [1,2,3,4,5], 1    Output: [2,3,4,5,1]
 * Input: [1,2,3,4,5], 6    Output: [2,3,4,5,1]
 * Input: [1,2,3,4,5], 3    Output: [4,5,1,2,3]
*/
/*
public static List<Integer> rotateLeftNTimes( List<Integer> nList, Integer n) {
}
/*
 * 5. Balanced Brackets
 * A bracket is any one of the following: (, ), {, }, [, or ]
 * 
 * The following are balanced brackets:
 *    ( )
 *    ( ) ( )
 *    ( ( ) )
 *    ( { [ ] } )
 *
 * The following are NOT balanced brackets:
 *   (
 *   )
 *   ( ( )
 *   ( [ ) ]
 *
 * Return true if balanced
 * Return false if not balanced
*/
/*
public static Boolean bracketsAreBalanced( String s ) {

}*/
/*
 * 6. Create a method that retrieves a list of all accounts and updates those accounts.
 *      Create a custom field on the Account standard object called Size__c that will be a 
 * picklist containing small/medium/large.
 *     Create a method that retrieves a list of all accounts. 
 *         - If an account has between 1-1000 employees then it is classified as small.
 *         - If an account has between 1001-10000 employees it is classified as medium.
*         - If an account has more than 10000 employees it is classified as large.
 *     Update the Size__c field on each account to reflect the amount of employees in the Account.
*/

public static void updateAccountSize( ) {
    List<Account> Accounts = [ SELECT name, NumberOfEmployees, Size__c FROM Account];

}
/* 
 * 7. Create a method that will find all leads that contain 'ca' in their fields. 
 *     If a lead is located in California(CA), change their Lead Status field to 'Closed - Not 
 * Converted' and their description should display the message, "We are no longer doing 
 * business in California."
 */

public static void updateCALeads( ) {
    List<Lead> leads = [ SELECT name, state, status FROM Lead];
    List<Lead> newleads = new list<Lead>();
    for(Lead a:[ SELECT name, state, status FROM Lead]){
        if(a.state == 'CA'){
            a.status = 'Closed - Not converted';
            a.description = 'We are no longer doing business in California';
        }
        system.debug(a);
        newleads.add(a);
    }
	Update newleads;
}
/*
 * 8. Create a method that will find all Opportunities which have already passed their Close Date 
 * and have a Stage field that is not 'Closed Won'. Since they have passed their Close Date and 
 * they are not marked as 'Closed Won', they should be marked as 'Closed Lost'.
 */

public static void closePastDueOpportunities( ) {
    List<Opportunity> Opportunities = [ SELECT Name, CloseDate, stageName FROM Opportunity];
    List<Opportunity> newopportunities = new List<opportunity>();
    for(Opportunity a:[ Select Name,CloseDate, stageName FROM Opportunity]){
        if(a.stageName < 'Closed Won'){
            a.stageName = 'Closed Lost';
            
        }
        system.debug(a);
        	newopportunities.add(a);
    }
        Update newopportunities; 
    
}
}
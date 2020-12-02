public class Fibonacci {
    
 public static Integer nFibonacci(Integer n) {
		integer a = 0;
        integer b = 1;
        integer c = 2;
        
        for(integer i = 0; i <= n; i++) {
            c = a + b;
            a = b;
            b = c; 
            system.debug('Value of A: ' + a + 'Value of B: ' + b + 'Value of C: ' + c); 
        }
        return c;
}
}
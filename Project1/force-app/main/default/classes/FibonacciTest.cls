@isTest
public class FibonacciTest {

    @isTest
    public static void nFibonacciTest() {
        
        integer result0 = Fibonacci.nFibonacci(0);
        system.assertEquals(0, result0);
        integer result1 = Fibonacci.nFibonacci(1);
        system.assertEquals(1, result1);
        integer result2 = Fibonacci.nFibonacci(2);
        system.assertEquals(2, result2);
        integer result10 = Fibonacci.nFibonacci(10);
        system.assertEquals(55, result10); 
    }
}
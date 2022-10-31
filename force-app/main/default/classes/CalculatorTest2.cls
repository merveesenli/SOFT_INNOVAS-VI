@isTest
public class CalculatorTest2 {
    @isTest 
    private static void addTest1() {
        Calculator2 c = new Calculator2();
        integer sum = c.add(10,15);
        System.assertEquals(25, sum);
    }
    @isTest 
    private static void addTest2() {
        Calculator2 c = new Calculator2();
        integer sum = c.add(10,15, 5);
        System.assertEquals(30, sum);
    }
    @isTest
    private static void leapYearTest() {
        Calculator2 c2 = new Calculator2();
        date dtt = date.newInstance(2000, 1, 1);
        boolean isLeap2 = c2.leapYearCheck(dtt);
        system.assertEquals(true, isLeap2);
    }
}
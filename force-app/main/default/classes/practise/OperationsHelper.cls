public class OperationsHelper {
    public static Decimal sum(list<decimal> lst) {
        decimal result = 0;
        if (lst.isEmpty()) {
            return null;    
        }
        for (decimal eachNumber : lst) {
            result += eachNumber;       
        }
        return result;   
    }
    public static decimal average(list<decimal> lst) {
        decimal resultAverage = 0;
        decimal result = 0;

        if (lst.isEmpty()) {
            System.debug('Please provide values to do the operation.');
            return null;    
        }
        for (decimal eachNumber : lst) {
            result += eachNumber;       
        }
        resultAverage = result/lst.size();
        return resultAverage;  
    }
    public static decimal highest(list<decimal> lst) {
        decimal resultHighest = lst[0];
        if (lst.isEmpty()) {
            System.debug('Please provide values to do the operation.');
            return null;    
        }
        for (decimal eachNumber : lst) {
            if (eachNumber>resultHighest) {
                resultHighest = eachNumber;    
            }       
        }
        return resultHighest;       
    }
    public static decimal lowest(list<decimal> lst) {
        decimal resultLowest = lst[0];
        if (lst.isEmpty()) {
            System.debug('Please provide values to do the operation.');
            return null;    
        }
        for (decimal eachNumber : lst) {
            if (eachNumber<resultLowest) {
                resultLowest = eachNumber;    
            }       
        }
        return resultLowest;       
    }
}

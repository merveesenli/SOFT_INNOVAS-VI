public class CalculatorSimple {
    public static integer add(integer a, integer b){
        integer sum = a + b;
        return sum;
    }
    public static integer add(integer a, integer b, integer c){
        integer sum = a + b + c;
        return sum;
    }
    public static integer add(list<integer> intList) {
        integer returnSum = 0;
        for (integer eachInt : intList) {
            returnSum = returnSum + eachInt;
        }
        return returnSum;
    }
}
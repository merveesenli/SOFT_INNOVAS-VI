public class BasicCalc {
    public integer add(integer x, integer y){
        integer sum = x + y;
        return sum;
    }
    public decimal average(integer i, integer j){
        integer summation = add(i, j);
        decimal avg = summation/2;
        return avg;
    }
}

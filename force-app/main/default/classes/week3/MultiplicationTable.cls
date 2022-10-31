public class MultiplicationTable {
    public void printMultiplicationTable(integer num){
        for(integer i = 1; i<=10; i++){
            integer result = i * num;
            System.debug(num + ' * ' + i + ' = ' + result);
        }
    }
}
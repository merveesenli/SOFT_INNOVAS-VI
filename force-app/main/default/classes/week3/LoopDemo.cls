public class LoopDemo {
    public void print_int_while(){
        Integer count = 1;
        while(count <=25){
            System.debug(count);
            count++;
        }
    }
    public void print_N_numbers(integer n){
        for (integer i =0; i<n; i++){
            System.debug(i);
        }
    }
    public void print_N_Odd_numbers(integer startInt, integer endInt){
        if(startInt>endInt){
            System.debug('start number CANNOT be greater than end number.');
        } else {
            for (integer i = startInt; i<=endInt; i++){
                integer modI = math.mod(i,2);
                if(modI == 1) System.debug(i);
            }
        }   
    }
}
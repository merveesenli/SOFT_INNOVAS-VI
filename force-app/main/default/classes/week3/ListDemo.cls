public class ListDemo {
    public static String candidatesList(integer i){
        List<string> listCandidates = new List<string>();
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Bill');
        listCandidates.add('Marc');
        System.debug('Candidates list is ' + listCandidates);
        string returnStr = '';
        if (i>=0 && i<listCandidates.size()){
            returnStr = listCandidates[i];
        }else{
            returnStr = 'NO values FOUND.';
        }
        return returnStr;  
    }
    public static void randomIntegerList(){
        List<integer> listInteger = new List<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);

        System.debug('random integer list IS ' + listInteger);

        integer index3value = listInteger.get(3);
        System.debug('index 3 value => ' + index3value);

        integer index2value = listInteger[2];
        System.debug('index 2 value => ' + index2value);
    }
    public static void allCats(){
        Cat falconsCat = new Cat('fluffykins', 'white');
        Cat vitapsCat = new Cat('Simba', 'brown');
        Cat sumitsCat = new Cat('Smokey', 'Gray');

        List<Cat> cats = new List<Cat>();
        cats.add(falconsCat);
        cats.add(vitapsCat);
        cats.add(sumitsCat);
        cats.add(falconsCat);

        System.debug('all cats => ' + cats);
        if(!cats.isEmpty()){
            cat index3 = cats[3];
            System.debug('Cat at index 3 ==> ' + index3);
        }
    }    
}
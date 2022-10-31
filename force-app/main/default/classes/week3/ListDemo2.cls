public class ListDemo2 {
    public static void iterateListInteger(){
        List<integer> listInteger = new List<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);

        for(integer eachInteger: listInteger){
            System.debug(eachInteger);
        }
    }
    public static set<integer> setFromList(List<integer> intList) {
        Set<integer> setOfInt = new Set<integer>();
        setOfInt.addAll(intList);
        return setOfInt;
        
    }
    
}
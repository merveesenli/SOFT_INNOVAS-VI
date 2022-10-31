public class GeneralList {
    public static list<string> toCaps(list<string> lst){
        List<string> retList = new List<string>();
        for (string eachStr : lst) {
            System.debug(eachStr);
            string caps = eachStr.capitalize();
            retList.add(caps);
        }


        return retList;
    } 
}

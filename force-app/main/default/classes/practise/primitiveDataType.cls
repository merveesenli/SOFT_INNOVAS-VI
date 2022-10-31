public class primitiveDataType {
    public void printBasicDataType2(string bn){
        string batchName = bn;
        System.debug('batchname is ' + batchName);
    }
    public void printBasicDataType3(string bn, integer cn, boolean ac){
        string BatchName = bn;
        integer totalCandidates = cn;
        boolean isAdminCompleted = ac;

        string batchDescription = BatchName + ' are the bestest.';
        System.debug(batchDescription);
        System.debug('total of candidates ' + totalCandidates);
    }
}

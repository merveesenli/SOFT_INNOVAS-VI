public class PrimitiveDataTypeDemo {
    public void printBasicDataType(){
       system.debug('printing primitive data types'); 
       string batchName = 'batch 9';
       integer totalCandidates = 70;
       Boolean isAdminCompleted = true;
       system.debug(batchName);
       system.debug(totalCandidates);
       system.debug(isAdminCompleted);

       string batchDescription = batchName + ' is fantastic.';
       system.debug(batchDescription);

       Decimal decValue = 4764545484.55;
       system.debug(decValue);

       Long longValue = 21487546;
       system.debug(longValue);

       Object obj = 'This is a string';
       Object obj2 = 40.5;
       Object obj3 = true;
       System.debug(obj);
       System.debug(obj2);
       System.debug(obj3);

       Id id1 = '0015g00000s9qW2AAI';
       system.debug('id 1 is --> ' + id1);


    }
    
}
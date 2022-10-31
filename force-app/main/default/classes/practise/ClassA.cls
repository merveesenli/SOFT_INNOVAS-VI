public class ClassA {
    public ClassA() {
        if(GeneralSetting.printFlag != 'off'){
            System.debug('Class A constructor.'); 
        }
    }
    public ClassA(string p) {
        if(GeneralSetting.printFlag != 'off'){
            System.debug('Class A param constructor. p = ' + p); 
        }
    }
    public static void classAmethod1() {
        if(GeneralSetting.printFlag != 'off'){
            System.debug('Class A method 1 print statement.');
        }    
    }
}

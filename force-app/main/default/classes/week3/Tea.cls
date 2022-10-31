public class Tea {
    public void start(){
        string step1 = 'We need to collect all raw material';
        System.debug('Step1 : ' + step1);
    }
    public void execute(){
        start();
        string step2 = 'We need to mix all material and boil in water';
        System.debug('Step2 : ' + step2);
    }
    public void finish(){
        execute();
        string step3 = 'Tea is ready to serve now';
        System.debug('Step3 : ' + step3);
    }
}
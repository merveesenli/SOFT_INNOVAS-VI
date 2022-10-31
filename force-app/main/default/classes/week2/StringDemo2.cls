public  class StringDemo2 {
    public void stringDemoMethod2() {
        String stringMethod = 'I am learning string methods in apex.';

        Integer lengthOfText = stringMethod.length();
        System.debug('length of string = ' + lengthOfText);

        String stringInUppercase= stringMethod.toUpperCase();
        System.debug('string in uppercase = ' + stringInUppercase);

        Boolean stringContains= stringMethod.contains('learning');
        System.debug('string contains learning = ' + stringContains);

    }
}
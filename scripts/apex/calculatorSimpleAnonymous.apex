List<integer> listInteger = new List<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);
        integer sum = CalculatorSimple.add(listInteger);
        system.debug('sum of integer => ' + sum);

integer x = CalculatorSimple.add(5, 55);
system.debug(x);

system.debug('77+4+65 =? ' + CalculatorSimple.add(77, 4, 65));
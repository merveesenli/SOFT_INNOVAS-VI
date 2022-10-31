list<string> shoppingList = new list<string>();
shoppingList.add('Camera');
shoppingList.add('headphone');
shoppingList.add('phone');
shoppingList.add('ticket');
shoppingList.add('bitcoin');

System.debug(shoppingList);

string item0 = shoppingList.get(0);
string item2 = shoppingList.get(2);
string item4 = shoppingList.get(4);
System.debug(item0);
System.debug(item2);
System.debug(item4);

List<date> birthDateList = new List<date>();
date dt1 = date.newInstance(1993, 5, 14);
birthDateList.add(dt1);
System.debug(birthDateList);
public class Pizza {
    public string size;
    public string topping;
    public integer num;
    public Pizza(string pizzaSize, string pizzaTopping, integer pizzaNumber){
        size = pizzaSize;
        topping = pizzaTopping;
        num = pizzaNumber;
    }
    public void getPizzaOrder(){
        System.debug('Pizza topping: ' + topping);
        System.debug('Pizza size: ' + size);
        System.debug('Number of Pizzas: ' + num);
    }
}
public class Cat {
    public string name;
    public string color;

    public Cat(string n, string c){
        name = n;
        color = c;
        sleeping();
    }
    public void sleeping(){
        System.debug(name + ' is sleeping');
    }
}
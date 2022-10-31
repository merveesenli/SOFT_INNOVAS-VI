public class MathPractice {
    public decimal practiceOne(decimal d1, decimal d2){
        decimal perimeter = null;
        
        decimal perimeterOfRectangle = (d1 + d2) * 2;
        system.debug('Dikdörtgenin çevre uzunluğu: ' + perimeterOfRectangle);

        return perimeter;
    }
    public decimal practiceTwo(decimal k, decimal m){
        
        decimal result = k / (m * m);
        system.debug('Vücut kitle endeksi: ' + result);

        return result;
    }
    public decimal practiceThree(Decimal num1, decimal num2){
        decimal result = (num1 + num2) / 2;
        system.debug('İki sayının ortalaması: ' + result);
        return result;
    }
    public decimal practiceFour(decimal total){
        decimal gift = 0;

        if (total <= 0) {
            System.debug('Hatalı bir değer girdiniz');
            
        } else if (total < 50) {
            System.debug('Bonus kazanamadınız');
            
        } else if (total < 200) {
            gift = 10;
            System.debug(total + '$ tutarındaki alışveriş karşılığı ' + gift + ' $ tutarında bonus kazandınız.');

        } else if (total < 500) {
            gift = 30;
            System.debug(total + '$ tutarındaki alışveriş karşılığı ' + gift + ' $ tutarında bonus kazandınız.');
        } else {
            gift = 50;
            System.debug(total + '$ tutarındaki alışveriş karşılığı ' + gift + ' $ tutarında bonus kazandınız.');
        }
        return gift;
    }
}

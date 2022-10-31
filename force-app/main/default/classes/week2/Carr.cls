public class Carr {

    public string carColor = '';
    public string carName = '';
    Integer maxSpeedKmPerHr = 150;

    public void switchOn() {
        System.debug('starting the car NOW');
    }
    public void drive(){
        System.debug('driving ' + carName);
    }

    public void driveAtMaxSpeed(){
        string description = 'Driving ' + carName + ' at max speed of ' + maxSpeedKmPerHr + 'km/hr';
        System.debug(description);
    }
        


    
}

public record Car(String brand, String model, double fuelConsumptionPer100km) {
    
    // Metoda obliczająca koszt podróży
    public double fuelCost(double fuelPrice, double distance) {
        // Obliczanie zużycia paliwa na podstawie dystansu
        double fuelConsumed = (fuelConsumptionPer100km / 100) * distance;
        // Obliczanie kosztu podróży
        return fuelConsumed * fuelPrice;
    }

    public static void main(String[] args) {
        // Przypadek testowy
        Car myCar = new Car("Toyota", "Corolla", 6.5);
        double fuelPrice = 4.5; // Cena paliwa za litr
        double distance = 200; // Dystans w kilometrach

        // Wywołanie metody i wyświetlenie kosztu podróży
        System.out.println("Fuel cost for the trip: $" + myCar.fuelCost(fuelPrice, distance));
    }
}

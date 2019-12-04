void main() {
  PowerGrid grid = new PowerGrid();

  NuclearPlant nuclear = new NuclearPlant();
  SolarPlant solar = new SolarPlant();

  grid.addPlant(nuclear);
  grid.addPlant(solar);
}

class PowerGrid {
  List<PowerPlant> connectedPlants = [];

  addPlant(PowerPlant plant) {
    plant.turnOn();
    connectedPlants.add(plant);
  }
}

// abstract class defines a new type in our app
abstract class PowerPlant {
  // if the class has the turnOn method, it's valid
  turnOn();
}

class NuclearPlant implements PowerPlant {
  turnOn() {
    print('On - Nuclear');
  }
}

class SolarPlant implements PowerPlant {
  turnOn() {
    print('On - Solar');
  }
}

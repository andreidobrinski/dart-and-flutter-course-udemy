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
    bool confirmation = plant.turnOn('5 hours');
    connectedPlants.add(plant);
  }
}

abstract class ABuilding {
  int height;
}

// abstract class defines a new type in our app
abstract class PowerPlant {
  int costOfEnergy;

  // if the class has the turnOn method, it's valid
  bool turnOn(String duration);
}

class NuclearPlant implements PowerPlant {
  int costOfEnergy;

  // arg name can be anything
  bool turnOn(String duration) {
    print('On - Nuclear');
    return true;
  }
}

class SolarPlant implements PowerPlant, ABuilding {
  int costOfEnergy;
  int height;

  bool turnOn(String duration) {
    print('On - Solar');
    return false;
  }
}

void main() {
  PowerGrid grid = new PowerGrid();

  NuclearPlant nuclear = new NuclearPlant();
  SolarPlant solar = new SolarPlant();

  grid.addPlant(nuclear);
  grid.addPlant(solar);
}

class PowerGrid {
  List<NuclearPlant> connectedPlants = [];

  addPlant(NuclearPlant plant) {
    plant.turnOn();
    connectedPlants.add(plant);
  }
}

class NuclearPlant {
  turnOn() {
    print('On - Nuclear');
  }
}

class SolarPlant {
  turnOn() {
    print('On - Solar');
  }
}

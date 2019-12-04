class PowerGrid {
  List<NuclearPlant> connectedPlants = [];

  addPlant(NuclearPlant plant) {
    plant.turnOn();
    connectedPlants.add(plant);
  }
}

class NuclearPlant {
  turnOn() {
    print('On');
  }
}

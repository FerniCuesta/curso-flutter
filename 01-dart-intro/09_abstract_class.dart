void main() {
  final windPlant = WindPlant(initialEnergy: 10);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  print(windPlant);

  print('Wind: ${chargePhone(windPlant, 10)}');
  print('Wind: ${chargePhone(nuclearPlant, 10)}');
}

double chargePhone(EnergyPlant plant, double chargingCost) {
  if (plant.energyLeft < 10) throw Exception('Not enough energy');

  plant.energyLeft -= chargingCost;

  return plant.energyLeft;
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type; // nuclear, wind, water

  // Builder
  EnergyPlant({required this.energyLeft, required this.type});

  // Methods -> don't do implementation
  void consumeEnergy(double amount);
}

// extends o implements

// extends
// la clase hereda todas las caracteristicas de la clase padre
class WindPlant extends EnergyPlant {
  // builder
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

// implements
// puede usarse cuando quieres crear una clase que solo implemente
// un metodo de la clase padre
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  // Builder
  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}

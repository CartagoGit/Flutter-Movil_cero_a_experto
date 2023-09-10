void main() {
  final windPlant = new WindPlant(initialEnergy: 100);
  final nuclearPlant = new NuclearPlant(initialEnergy: 19);
  print(windPlant);

  windPlant.consumeEnergy(90);
  print(windPlant);

  print('Wind charge: ${chargePhone(windPlant)}');
  print(windPlant);

  print('Nuclear charge: ${chargePhone(nuclearPlant)}');
  print(nuclearPlant);
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) throw Exception('No hay suficiente energia');
  plant.consumeEnergy(10);
  print('--- Phone charged --- By Plant ${plant.type.name}');
  return plant.energyLeft;
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  PlantType type;

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
  // * Tambien podriamos definirlo y evitar que se implemente en las clases hijas, y en caso de que se implemente, lanzar un error
  // {
  //   throw UnimplementedError();
  // }

  @override
  String toString() {
    String type = this.type.name;
    return 'EnergyPlant: ${type[0].toUpperCase() + type.substring(1)} - ${this.energyLeft}';
  }
}

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) => this.energyLeft -= amount;
}

class NuclearPlant extends EnergyPlant {
  NuclearPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.nuclear);

  @override
  void consumeEnergy(double amount) => this.energyLeft -= amount;
}

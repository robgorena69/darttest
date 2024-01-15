void main() {

  final windPlant = WindPlant(energiaRestante: 35);
  print(windPlant);
  print(windPlant.energyLeft);
  print('bateria restante : ${cargarTelefono(windPlant)}');
  final nuclearPlant = NuclearPlant(energyLeft: 50);
  print(nuclearPlant);
  print(nuclearPlant.energyLeft);
  print('bateria restante : ${cargarTelefono(nuclearPlant)}');
}

enum PlantType {NUCLEAR,WIND,WATER}

double cargarTelefono(EnergyPlant plant){
  plant.consumeEnergy(1);
  if (plant.energyLeft<10){
    throw Exception('Not enough Energy');
  }
  
  return plant.energyLeft-10;
}

abstract class EnergyPlant{
  
  double energyLeft;
  final PlantType type;
  
  EnergyPlant({required this.energyLeft, required this.type});
  
  void consumeEnergy(double amount);
}

class WindPlant extends EnergyPlant{
  
  WindPlant({
    required double energiaRestante
  }): super(energyLeft: energiaRestante,type: PlantType.WIND);
  
  @override
  void consumeEnergy(double amount){
    energyLeft -= amount;
  }
  
  
}

class NuclearPlant implements EnergyPlant{
  
  @override
  double energyLeft;
  
  @override
  PlantType type =  PlantType.NUCLEAR;
  
  NuclearPlant({required this.energyLeft});
  
   @override
  void consumeEnergy(double amount){
    energyLeft -= amount*0.5;
  }
  
}